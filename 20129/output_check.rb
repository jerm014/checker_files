@output_check = {
	:concept_id => 26,
	:body => "Correct output - case: ###CHECK_DESCRIPTION###",
	:points => 1,
	:check_type => 1,
	:check_label => "Code",
	:eliminatory => false,
	:position => 10,
	:commands => [
		{
			:check_docker_image_id => 1,
			:command => "op_and(copy_files([\"235/checker.bash\", \"235/all/###CHECK_PATH###\", \"235/allowed_functions\"]), run_bash(\"./checker.bash --valgrind --ltrace ./hsh ./###CHECK_BASENAME###\", \"OK\"), is_equal(\"\", exec_bash(\"rm -f ###CHECK_BASENAME###\")))",
			:files => "235/checker.bash, 235/all/###CHECK_PATH###"
		}
	]
}
