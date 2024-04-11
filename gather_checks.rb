require './project.rb'

info = []
tasks_id = []

@tasks.each do |task|
	id = task[:id]
	
	# Check for "Correct output - case: <number>"
	if File.readlines("./#{id}/checks.rb").grep(/Correct\s+output\s+-\s+case\s*:\s*\d+/).any?
		abort "Error: #{id}/checks.rb contains unlabeled checks"
	end

	require "./#{id}/checks.rb"
	
	info.push(@checks)
	tasks_id.push(id)
end

# Create gen Ruby file
gen_template = File.read("generate_corrections_template.rb")
gen_template = gen_template.gsub(/###INFO###/, "info = #{info}")
gen_template = gen_template.gsub(/###TASKS_ID###/, "tasks_id = #{tasks_id}")
File.open("generate_corrections.rb", 'w') { |file| file.write(gen_template) }
