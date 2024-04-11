@info = [{:concept_id=>26, :body=>"README is present and not empty", :points=>0, :check_type=>1, :check_label=>"Requirement", :eliminatory=>true, :position=>1, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(files_exist([\"README.md\"]), op_not(files_empty([\"README.md\"])))"}]}, {:concept_id=>26, :body=>"Compile program", :points=>0, :check_type=>1, :check_label=>"Requirement", :eliminatory=>true, :position=>2, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(is_equal(\"\", exec_bash(\"rm -f hsh\")), gcc([\"*.c\"], \"hsh\"))"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `ls`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>10, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Copy the file /bin/ls to `hbtn_ls` (in the parent's parent directory) and execute `./.././../hbtn_ls /var`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>11, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_in_two_parent_dir_2.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_in_two_parent_dir_2.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_in_two_parent_dir_2.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_in_two_parent_dir_2.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `ls -l`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>12, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_1_arg.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_1_arg.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_1_arg.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_1_arg.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `/bin/ls /var`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>13, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/bin_ls_1_arg_1.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./bin_ls_1_arg_1.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f bin_ls_1_arg_1.bash\")))", :files=>"235/checker.bash, 235/all/ls/bin_ls_1_arg_1.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Copy the file /bin/ls to `hbtn_ls` (in the parent directory) and execute `../hbtn_ls /var`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>14, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_in_parent_dir.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_in_parent_dir.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_in_parent_dir.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_in_parent_dir.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Copy the file /bin/ls to `hbtn_ls` (in the parent's parent directory) and execute `../../hbtn_ls /var`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>15, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_in_two_parent_dir.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_in_two_parent_dir.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_in_two_parent_dir.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_in_two_parent_dir.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Copy the file /bin/ls to `hbtn_ls` (in the parent's parent directory) and execute `./.././../////././hbtn_ls /var`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>16, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_in_two_parent_dir_3.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_in_two_parent_dir_3.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_in_two_parent_dir_3.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_in_two_parent_dir_3.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `/bin/ls`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>17, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/bin_ls.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./bin_ls.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f bin_ls.bash\")))", :files=>"235/checker.bash, 235/all/ls/bin_ls.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: '/bin' is the last element of PATH, execute `ls`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>18, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_path_bin_last.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_path_bin_last.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_path_bin_last.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_path_bin_last.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `/bin/ls` (surrounded by spaces) (large)\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>19, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/bin_ls_large_input.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./bin_ls_large_input.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f bin_ls_large_input.bash\")))", :files=>"235/checker.bash, 235/all/ls/bin_ls_large_input.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Remove the `$PATH` environment variable and execute `/bin/ls`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>20, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/bin_ls_empty_path.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./bin_ls_empty_path.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f bin_ls_empty_path.bash\")))", :files=>"235/checker.bash, 235/all/ls/bin_ls_empty_path.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `/bin/ls -l`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>21, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/bin_ls_1_arg.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./bin_ls_1_arg.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f bin_ls_1_arg.bash\")))", :files=>"235/checker.bash, 235/all/ls/bin_ls_1_arg.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute both `/bin/ls` and `ls` several times with empty lines and leading and trailing spaces\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>22, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/mix_ls_bin_ls_spaces.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./mix_ls_bin_ls_spaces.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f mix_ls_bin_ls_spaces.bash\")))", :files=>"235/checker.bash, 235/all/ls/mix_ls_bin_ls_spaces.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `ls` 4 times (with leading and trailing spaces)\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>23, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_spaces.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_spaces.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_spaces.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_spaces.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Set PATH to be an empty string and execute `ls`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>24, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_empty_path.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_empty_path.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_empty_path.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_empty_path.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `/bin/ls` 4 times (surrounded by spaces)\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>25, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/bin_ls_spaces.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./bin_ls_spaces.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f bin_ls_spaces.bash\")))", :files=>"235/checker.bash, 235/all/ls/bin_ls_spaces.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Copy the file /bin/ls to `hbtn_ls` (in the current directory) and execute `./hbtn_ls /var`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>26, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_in_current_dir.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_in_current_dir.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_in_current_dir.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_in_current_dir.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Copy file /bin/ls to .hbtn_ls (in the current directory), change PATH to point to PWD and execute `.hbtn_ls /var`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>27, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_dot_ls.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_dot_ls.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_dot_ls.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_dot_ls.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Remove all environment variables and execute `ls`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>28, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/env_ignore_ls.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./env_ignore_ls.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f env_ignore_ls.bash\")))", :files=>"235/checker.bash, 235/all/ls/env_ignore_ls.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: '/bin' is the first element of PATH, execute `ls`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>29, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_path_bin_first.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_path_bin_first.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_path_bin_first.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_path_bin_first.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Remove all environment variables and execute `/bin/ls`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>30, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/env_ignore_bin_ls.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./env_ignore_bin_ls.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f env_ignore_bin_ls.bash\")))", :files=>"235/checker.bash, 235/all/ls/env_ignore_bin_ls.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `/bin/ls` 3 times\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>31, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/bin_ls_3_times.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./bin_ls_3_times.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f bin_ls_3_times.bash\")))", :files=>"235/checker.bash, 235/all/ls/bin_ls_3_times.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `/bin/ls` (surrounded by spaces) (medium)\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>32, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/bin_ls_medium_input.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./bin_ls_medium_input.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f bin_ls_medium_input.bash\")))", :files=>"235/checker.bash, 235/all/ls/bin_ls_medium_input.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Execute `/bin/ls` and `ls` several times\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>33, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/mix_ls_bin_ls.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./mix_ls_bin_ls.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f mix_ls_bin_ls.bash\")))", :files=>"235/checker.bash, 235/all/ls/mix_ls_bin_ls.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: PATH does not contain '/bin', execute `ls`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>34, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_path_no_bin.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_path_no_bin.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_path_no_bin.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_path_no_bin.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: '/bin' is in the middle of PATH, execute `ls`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>35, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/ls/ls_path_bin_middle.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./ls_path_bin_middle.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ls_path_bin_middle.bash\")))", :files=>"235/checker.bash, 235/all/ls/ls_path_bin_middle.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Set PATH to be an empty string and execute a command that does not exist\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>36, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/path/empty_path_failing_cmd.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./empty_path_failing_cmd.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f empty_path_failing_cmd.bash\")))", :files=>"235/checker.bash, 235/all/path/empty_path_failing_cmd.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Remove PATH variable and set a `PATH1` variable, and execute `ls`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>37, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/path/path_path1_var.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./path_path1_var.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f path_path1_var.bash\")))", :files=>"235/checker.bash, 235/all/path/path_path1_var.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: Copy the file `/bin/ls` to `hbtn_ls` (in the current directory), set the PATH to PWD, and execute `hbtn_ls /var`\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>38, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/path/path_current_dir_ls.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./path_current_dir_ls.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f path_current_dir_ls.bash\")))", :files=>"235/checker.bash, 235/all/path/path_current_dir_ls.bash"}]}, {:concept_id=>26, :body=>"Correct output - case: `fork` should not be cold when a command does not exist\n", :points=>1, :check_type=>1, :check_label=>"Code", :eliminatory=>false, :position=>39, :commands=>[{:check_docker_image_id=>1, :command=>"op_and(copy_files([\"235/checker.bash\", \"235/all/failing/unknown_command_no_fork.bash\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./unknown_command_no_fork.bash\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f unknown_command_no_fork.bash\")))", :files=>"235/checker.bash, 235/all/failing/unknown_command_no_fork.bash"}]}]