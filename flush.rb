#!/usr/bin/ruby

dir = ARGV[0]

Dir.glob("./#{dir}/main_*.c") do |main|

        content = File.read(main)
        new_content = []
        content.split("\n").each do |line|
                new_content << line
                if line.match(/[^_]printf/)
                        match = line.match(/^(\s+)/)
                        indent = match.captures[0]
                        new_content << "#{indent}fflush(stdout);"
                end
        end

        File.open(main, 'w') { |file| file.write("#{new_content.join("\n")}") }
end
