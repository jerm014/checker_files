tasks = ###TASKS_HASH###

tasks.each do |t|
task = Task.find(t[:id])
task.checks.destroy_all
t[:checks].each do |i|
check = Check.create! :task => task, :concept_id => i[:concept_id], :body => i[:body], :points => i[:points], :check_type => i[:check_type], :eliminatory => i[:eliminatory], :check_label => i[:check_label], :position => i[:position]
next if i[:commands].nil?
i[:commands].each do |c|
command = CheckCommand.create! :check => check, :check_docker_image_id => c[:check_docker_image_id], :command => c[:command], :online => true, :files => c[:files]
end
end
end
