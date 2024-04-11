require 'open3'
require 'json'


#
# This file generates for each task of the project its folder and its content
#

content = File.read("project_raw.json")
project = JSON.parse(content)

tasks = project["tasks"]
tasks.each do |task|

	id = task["id"]
	# task to skip (mostly manual tasks)
	next if ["1055", "1033", "1041", "1050", "1051", "1053", "1054"].include?("#{id}")

	body = task["body"]
	title = task["title"]

	if !Dir.exist?("#{id}")
		_, _, _ = Open3.capture3("mkdir #{id}")
	end

	task_json = JSON.pretty_generate(task)
	File.open("./#{id}/#{title}.json", 'w') { |file| file.write(task_json) }
	File.open("./#{id}/TASK.md", 'w') { |file| file.write(body) }

	if !File.exist?("#{id}/output_check.rb")
		_, _, _ = Open3.capture3("cp ./templates/output_check.rb #{id}/")
	end
	_, _, _ = Open3.capture3("cp ./templates/requirement_checks.rb #{id}/")
	if !File.exist?("#{id}/gather_checks.rb")
		_, _, _ = Open3.capture3("cp ./templates/gather_checks.rb #{id}/")
	end
	if !File.exist?("#{id}/checks_path.rb")
		_, _, _ = Open3.capture3("cp ./templates/checks_path.rb #{id}/")
	end
end
