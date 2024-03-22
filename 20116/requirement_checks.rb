@requirement_checks = [
	{
		:concept_id => 26,
		:body => "README is present and not empty",
		:points => 0,
		:check_type => 1,
		:check_label => "Requirement",
		:eliminatory => true,
		:position => 1,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(files_exist([\"README.md\"]), op_not(files_empty([\"README.md\"])))"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Compile program",
		:points => 0,
		:check_type => 1,
		:check_label => "Requirement",
		:eliminatory => true,
		:position => 2,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(is_equal(\"\", exec_bash(\"rm -f hsh\")), gcc([\"*.c\"], \"hsh\"))"
			}
		]
	}
]
