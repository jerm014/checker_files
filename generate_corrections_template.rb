###INFO###
###TASKS_ID###

id = 0
tasks_id.each do |t_id|
task = Task.find(t_id)
task.update(:github_repo => "holbertonschool-low_level_programming")
# puts "Task #{t_id}"
info[id].each do |i|
check = Check.create! :task => task, :concept_id => i[:concept_id], :body => i[:body], :points => i[:points], :check_type => i[:check_type], :eliminatory => i[:eliminatory], :check_label => i[:check_label], :position => i[:position]
# puts i
next if i[:commands].nil?
i[:commands].each do |c|
command = CheckCommand.create! :check => check, :check_docker_image_id => c[:check_docker_image_id], :command => c[:command].gsub("###FILE###", task.github_file).gsub("###ID###", task.id.to_s).gsub("###EXEC###", task.github_file.split('.c')[0]), :online => true, :files => c[:files]
# puts c
end
end
id = id + 1
# puts
end
