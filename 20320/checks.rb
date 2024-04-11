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
				:command => "files_exist([\"121-avl_insert.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"0-binary_tree_node.c\"])"
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
				:command => "gcc([\"121-avl_insert.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1507/main_0.c\"], \"121-avl_insert_0\")"
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
				:command => "op_and(compare(\"./121-avl_insert_0\", \"270/1507/output_0\"), valgrind_error(\"./121-avl_insert_0\"), valgrind_leak(\"./121-avl_insert_0\"))",
				:files => "270/1507/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Insert 3 values. No rotation needed",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"121-avl_insert.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1507/main_1.c\"], \"121-avl_insert_1\"), compare(\"./121-avl_insert_1\", \"270/1507/output_1\"), valgrind_error(\"./121-avl_insert_1\"), valgrind_leak(\"./121-avl_insert_1\"))",
				:files => "270/1507/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Insert 9 values",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"121-avl_insert.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1507/main_2.c\"], \"121-avl_insert_2\"), compare(\"./121-avl_insert_2\", \"270/1507/output_2\"), valgrind_error(\"./121-avl_insert_2\"), valgrind_leak(\"./121-avl_insert_2\"))",
				:files => "270/1507/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Insert 50 values",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"121-avl_insert.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1507/main_3.c\"], \"121-avl_insert_3\"), compare(\"./121-avl_insert_3\", \"270/1507/output_3\"), valgrind_error(\"./121-avl_insert_3\"), valgrind_leak(\"./121-avl_insert_3\"))",
				:files => "270/1507/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Insert 15 values in ascending order",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"121-avl_insert.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1507/main_4.c\"], \"121-avl_insert_4\"), compare(\"./121-avl_insert_4\", \"270/1507/output_4\"), valgrind_error(\"./121-avl_insert_4\"), valgrind_leak(\"./121-avl_insert_4\"))",
				:files => "270/1507/main_4.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Insert 15 value in descending order",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 15,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"121-avl_insert.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1507/main_5.c\"], \"121-avl_insert_5\"), compare(\"./121-avl_insert_5\", \"270/1507/output_5\"), valgrind_error(\"./121-avl_insert_5\"), valgrind_leak(\"./121-avl_insert_5\"))",
				:files => "270/1507/main_5.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Right left case",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 16,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"121-avl_insert.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1507/main_6.c\"], \"121-avl_insert_6\"), compare(\"./121-avl_insert_6\", \"270/1507/output_6\"), valgrind_error(\"./121-avl_insert_6\"), valgrind_leak(\"./121-avl_insert_6\"))",
				:files => "270/1507/main_6.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Left right case",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 17,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"121-avl_insert.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1507/main_7.c\"], \"121-avl_insert_7\"), compare(\"./121-avl_insert_7\", \"270/1507/output_7\"), valgrind_error(\"./121-avl_insert_7\"), valgrind_leak(\"./121-avl_insert_7\"))",
				:files => "270/1507/main_7.c"
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
				:command => "malloc(\"./121-avl_insert_0\", \"c/malloc/libfake_malloc.so\")"
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
				:command => "betty_code([\"121-avl_insert.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"0-binary_tree_node.c\"])"
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
				:command => "betty_doc([\"121-avl_insert.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"0-binary_tree_node.c\"])"
			}
		]
	}
]
