@checks = [
	{
		:concept_id => 26,
		:body => "File is present",
		:points => 0,
		:check_type => 1,
		:check_label => "Requirement",
		:eliminatory => true,
		:position => 1,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "files_exist([\"###FILE###\"])"
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
				:command => "gcc([\"###FILE###\", \"270/binary_tree_print.c\", \"270/###ID###/main_0.c\"], \"###EXEC###_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: 0",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./###EXEC###_0\", \"270/###ID###/output_0\"), valgrind_error(\"./###EXEC###_0\"))",
				:files => "270/###ID###/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: 1",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"###FILE###\", \"270/binary_tree_print.c\", \"270/###ID###/main_1.c\"], \"###EXEC###_1\"), compare(\"./###EXEC###_1\", \"270/###ID###/output_1\"), valgrind_error(\"./###EXEC###_1\"))",
				:files => "270/###ID###/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: 2",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"###FILE###\", \"270/binary_tree_print.c\", \"270/###ID###/main_2.c\"], \"###EXEC###_2\"), compare(\"./###EXEC###_2\", \"270/###ID###/output_2\"), valgrind_error(\"./###EXEC###_2\"))",
				:files => "270/###ID###/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"###FILE###\", \"270/binary_tree_print.c\", \"270/###ID###/main_3.c\"], \"###EXEC###_3\"), compare(\"./###EXEC###_3\", \"270/###ID###/output_3\"), valgrind_error(\"./###EXEC###_3\"))",
				:files => "270/###ID###/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: 4",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"###FILE###\", \"270/binary_tree_print.c\", \"270/###ID###/main_4.c\"], \"###EXEC###_4\"), compare(\"./###EXEC###_4\", \"270/###ID###/output_4\"), valgrind_error(\"./###EXEC###_4\"))",
				:files => "270/###ID###/main_4.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Handled `malloc` return",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 20,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "malloc(\"./###EXEC###_0\", \"c/malloc/libfake_malloc.so\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Betty coding style",
		:points => 1,
		:check_type => 1,
		:check_label => "Requirement",
		:eliminatory => false,
		:position => 100,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "betty_code([\"###FILE###\"])"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Betty documentation style",
		:points => 1,
		:check_type => 1,
		:check_label => "Requirement",
		:eliminatory => false,
		:position => 101,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "betty_doc([\"###FILE###\"])"
			}
		]
	}
]
