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
				:command => "files_exist([\"1-binary_tree_insert_left.c\"])"
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
				:command => "gcc([\"1-binary_tree_insert_left.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1468/main_0.c\"], \"1-binary_tree_insert_left_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Insert left child in a root node that has no left child",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./1-binary_tree_insert_left_0\", \"270/1468/output_0\"), valgrind_error(\"./1-binary_tree_insert_left_0\"), valgrind_leak(\"./1-binary_tree_insert_left_0\"))",
				:files => "270/1468/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Insert left child in a node that has no left child",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"1-binary_tree_insert_left.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1468/main_1.c\"], \"1-binary_tree_insert_left_1\"), compare(\"./1-binary_tree_insert_left_1\", \"270/1468/output_1\"), valgrind_error(\"./1-binary_tree_insert_left_1\"), valgrind_leak(\"./1-binary_tree_insert_left_1\"))",
				:files => "270/1468/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Insert left child in a node that already has a left child",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"1-binary_tree_insert_left.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1468/main_2.c\"], \"1-binary_tree_insert_left_2\"), compare(\"./1-binary_tree_insert_left_2\", \"270/1468/output_2\"), valgrind_error(\"./1-binary_tree_insert_left_2\"), valgrind_leak(\"./1-binary_tree_insert_left_2\"))",
				:files => "270/1468/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_insert_left(NULL, 64);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"1-binary_tree_insert_left.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1468/main_3.c\"], \"1-binary_tree_insert_left_3\"), compare(\"./1-binary_tree_insert_left_3\", \"270/1468/output_3\"), valgrind_error(\"./1-binary_tree_insert_left_3\"), valgrind_leak(\"./1-binary_tree_insert_left_3\"))",
				:files => "270/1468/main_3.c"
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
				:command => "malloc(\"./1-binary_tree_insert_left_0\", \"c/malloc/libfake_malloc.so\")"
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
				:command => "betty_code([\"1-binary_tree_insert_left.c\"])"
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
				:command => "betty_doc([\"1-binary_tree_insert_left.c\"])"
			}
		]
	}
]
