require 'open3'
require 'json'

#
# This script generates the check to be sent to Guillaume
#

content = File.read("project_raw.json")
project = JSON.parse(content)

tasks_hash = []

tasks = project["tasks"]
tasks.each do |task|

	id = task["id"]
	# task to skip (mostly manual tasks)
	next if ["1055", "1033", "1041", "1050", "1051", "1053", "1054"].include?("#{id}")

	if !File.exist?("#{id}/all_checks.rb")
		puts "ERROR: #{id} does not contains the file all_checks.rb"
		exit 1
	end
	load "#{id}/all_checks.rb"

	task_hash = {
		:id => id.to_i,
		:checks => @info
	}
	tasks_hash << task_hash
end

File.open("gen_all.rb", 'w') do |file|
	file.write("tasks = #{tasks_hash}\n\n")
end
