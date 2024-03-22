require 'pp'
require 'open3'

require_relative 'requirement_checks.rb'
require_relative 'checks_path.rb'
require_relative 'output_check.rb'

@checks = []

@checks += @requirement_checks

index = 10
@checks_path.each do |check_path|

	Dir.glob("../all/#{check_path}.bash") do |path|

		basename = path.split('/').last

		desc, _, _ = Open3.capture3("grep -A 1 -e '^# Description' #{path} | tail -1")
		desc = desc.gsub(/^\s*#\s*/, "")

		check = Marshal.load(Marshal.dump(@output_check))


		body = check[:body]
		body = body.gsub(/###CHECK_DESCRIPTION###/, desc)
		check[:body] = body

		check[:position] = index

		pa = path.split('/').drop(2).join('/')
		command = check[:commands][0][:command]
		command = command.gsub(/###CHECK_PATH###/, pa)
		command = command.gsub(/###CHECK_BASENAME###/, basename)
		check[:commands][0][:command] = command

		files = check[:commands][0][:files]
		files = files.gsub(/###CHECK_PATH###/, pa)
		check[:commands][0][:files] = files

		@checks << check

		index = index + 1
	end
end

# pp @checks

File.open("all_checks.rb", 'w') { |file| file.write("@info = #{@checks}") }
