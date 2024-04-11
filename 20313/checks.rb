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
				:command => "files_exist([\"111-bst_insert.c\", \"0-binary_tree_node.c\"])"
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
				:command => "gcc([\"111-bst_insert.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1486/main_0.c\"], \"111-bst_insert_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Insert a single value",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./111-bst_insert_0\", \"270/1486/output_0\"), valgrind_error(\"./111-bst_insert_0\"), valgrind_leak(\"./111-bst_insert_0\"))",
				:files => "270/1486/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Insert 3 different values",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"111-bst_insert.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1486/main_1.c\"], \"111-bst_insert_1\"), compare(\"./111-bst_insert_1\", \"270/1486/output_1\"), valgrind_error(\"./111-bst_insert_1\"), valgrind_leak(\"./111-bst_insert_1\"))",
				:files => "270/1486/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Insert 9 different values",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"111-bst_insert.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1486/main_2.c\"], \"111-bst_insert_2\"), compare(\"./111-bst_insert_2\", \"270/1486/output_2\"), valgrind_error(\"./111-bst_insert_2\"), valgrind_leak(\"./111-bst_insert_2\"))",
				:files => "270/1486/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Insert 50 different values",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"111-bst_insert.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1486/main_3.c\"], \"111-bst_insert_3\"), compare(\"./111-bst_insert_3\", \"270/1486/output_3\"), valgrind_error(\"./111-bst_insert_3\"), valgrind_leak(\"./111-bst_insert_3\"))",
				:files => "270/1486/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Insert 11 different values + 1 duplicate",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"111-bst_insert.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1486/main_4.c\"], \"111-bst_insert_4\"), compare(\"./111-bst_insert_4\", \"270/1486/output_4\"), valgrind_error(\"./111-bst_insert_4\"), valgrind_leak(\"./111-bst_insert_4\"))",
				:files => "270/1486/main_4.c"
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
				:command => "malloc(\"./111-bst_insert_0\", \"c/malloc/libfake_malloc.so\")"
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
				:command => "betty_code([\"111-bst_insert.c\", \"0-binary_tree_node.c\"])"
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
				:command => "betty_doc([\"111-bst_insert.c\", \"0-binary_tree_node.c\"])"
			}
		]
	}
]
