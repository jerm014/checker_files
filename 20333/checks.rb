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
				:command => "files_exist([\"124-sorted_array_to_avl.c\", \"0-binary_tree_node.c\"])"
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
				:command => "gcc([\"124-sorted_array_to_avl.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1557/main_0.c\"], \"124-sorted_array_to_avl_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Array with 1 single value",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./124-sorted_array_to_avl_0\", \"270/1557/output_0\"), valgrind_error(\"./124-sorted_array_to_avl_0\"), valgrind_leak(\"./124-sorted_array_to_avl_0\"))",
				:files => "270/1557/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Array with 3 values",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"124-sorted_array_to_avl.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1557/main_1.c\"], \"124-sorted_array_to_avl_1\"), compare(\"./124-sorted_array_to_avl_1\", \"270/1557/output_1\"), valgrind_error(\"./124-sorted_array_to_avl_1\"), valgrind_leak(\"./124-sorted_array_to_avl_1\"))",
				:files => "270/1557/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Array with 7 values",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"124-sorted_array_to_avl.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1557/main_2.c\"], \"124-sorted_array_to_avl_2\"), compare(\"./124-sorted_array_to_avl_2\", \"270/1557/output_2\"), valgrind_error(\"./124-sorted_array_to_avl_2\"), valgrind_leak(\"./124-sorted_array_to_avl_2\"))",
				:files => "270/1557/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Array with 15 elements",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"124-sorted_array_to_avl.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1557/main_3.c\"], \"124-sorted_array_to_avl_3\"), compare(\"./124-sorted_array_to_avl_3\", \"270/1557/output_3\"), valgrind_error(\"./124-sorted_array_to_avl_3\"), valgrind_leak(\"./124-sorted_array_to_avl_3\"))",
				:files => "270/1557/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `sorted_array_to_avl(NULL, 0);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"124-sorted_array_to_avl.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1557/main_4.c\"], \"124-sorted_array_to_avl_4\"), compare(\"./124-sorted_array_to_avl_4\", \"270/1557/output_4\"), valgrind_error(\"./124-sorted_array_to_avl_4\"), valgrind_leak(\"./124-sorted_array_to_avl_4\"))",
				:files => "270/1557/main_4.c"
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
				:command => "malloc(\"./124-sorted_array_to_avl_0\", \"c/malloc/libfake_malloc.so\")"
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
				:command => "betty_code([\"124-sorted_array_to_avl.c\", \"0-binary_tree_node.c\"], [\"--max-funcs=2\"])"
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
				:command => "betty_doc([\"124-sorted_array_to_avl.c\", \"0-binary_tree_node.c\"])"
			}
		]
	}
]
