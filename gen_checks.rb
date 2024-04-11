require 'open3'

require './project.rb'

project_folder="0x1C-binary_trees"

# Risky area. Set to tru for regenerate to default
override_checks = false
override_mains = false

@tasks.each do |task|
	id = task[:id]

	# Create directory and gitignore file
	Dir.mkdir("#{id}") if !Dir.exists? "#{id}"
	_, _, _ = Open3.capture3("echo \".gitignore\" > #{id}/.gitignore")

	# Copy and ignore need files to compile
	github_files = task[:github_file]
	github_files.each do |github_file|
		_, _, _ = Open3.capture3("cp #{project_folder}/#{github_file} #{id}/#{github_file}")
		_, _, _ = Open3.capture3("echo \"#{github_file}\" >> #{id}/.gitignore")
	end
	
	# Create checks Ruby file
	if !File.file? "#{id}/checks.rb" or override_checks
		checks_template = File.read("checks_template.rb")
		files = github_files.join("\\\", \\\"")
		checks_template = checks_template.gsub(/###FILE###/, "#{files}")
		checks_template = checks_template.gsub(/###ID###/, "#{id}")
		exec_file = github_files[0].split('.c')[0]
		checks_template = checks_template.gsub(/###EXEC###/, "#{exec_file}")
		File.open("#{id}/checks.rb", 'w') { |file| file.write(checks_template) }
	end

	# Creates main files
	for i in 0..4
		if !File.file? "#{id}/main_#{i}.c" or override_mains
			main_template = File.read("main_template_#{i}.c")
			func = github_files[0].split('.c')[0]
			func = func.gsub(/^\d+-/, "")
			main_template = main_template.gsub(/\/\*\s*###FUNC###\s*\*\//, "#{func}(root);")
			File.open("#{id}/main_#{i}.c", 'w') { |file| file.write(main_template) }
		end
	end

	# Temporary ignore until the checks are ready
	if !File.file? ".gitignore" or !File.readlines(".gitignore").grep(/#{id}(?:\/)?$/).any?
		_, _, _ = Open3.capture3("echo \"#{id}/\" >> .gitignore")
	end
end
