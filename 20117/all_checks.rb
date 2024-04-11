@info = [{:concept_id=>26, :body=>"README is present and not empty", :points=>0, :check_type=>1, :check_label=>"Requirement", :eliminatory=>true, :position=>1, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(files_exist([\"README.md\"]), op_not(files_empty([\"README.md\"])))"}]}, {:concept_id=>26, :body=>"Compile program", :points=>0, :check_type=>1, :check_label=>"Requirement", :eliminatory=>true, :position=>2, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(is_equal(\"\", exec_bash(\"rm -f hsh\")), gcc([\"*.c\"], \"hsh\"))"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `/bin/ls`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>10, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/bin_ls.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./bin_ls.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f bin_ls.bash\")))", :files=>"235/checker.bash, 235/all/ls/bin_ls.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `/bin/ls` (surrounded by spaces) (medium)\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>11, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/bin_ls_medium_input.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./bin_ls_medium_input.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f bin_ls_medium_input.bash\")))", :files=>"235/checker.bash, 235/all/ls/bin_ls_medium_input.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `/bin/ls` (surrounded by spaces) (large)\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>12, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/bin_ls_large_input.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./bin_ls_large_input.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f bin_ls_large_input.bash\")))", :files=>"235/checker.bash, 235/all/ls/bin_ls_large_input.bash"}]}]