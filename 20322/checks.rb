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
				:command => "files_exist([\"123-avl_remove.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\"])"
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
				:command => "gcc([\"123-avl_remove.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_array_to_avl.c\", \"270/helpers/_avl_insert.c\", \"270/helpers/_binary_tree_rotate_left.c\", \"270/helpers/_binary_tree_rotate_right.c\", \"270/helpers/_binary_tree_balance.c\", \"270/helpers/_binary_tree_node.c\", \"270/1509/main_0.c\"], \"123-avl_remove_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Remove a leaf",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./123-avl_remove_0\", \"270/1509/output_0\"), valgrind_error(\"./123-avl_remove_0\"), valgrind_leak(\"./123-avl_remove_0\"))",
				:files => "270/1509/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Remove a node that changes the balance",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"123-avl_remove.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_array_to_avl.c\", \"270/helpers/_avl_insert.c\", \"270/helpers/_binary_tree_rotate_left.c\", \"270/helpers/_binary_tree_rotate_right.c\", \"270/helpers/_binary_tree_balance.c\", \"270/helpers/_binary_tree_node.c\", \"270/1509/main_1.c\"], \"123-avl_remove_1\"), compare(\"./123-avl_remove_1\", \"270/1509/output_1\"), valgrind_error(\"./123-avl_remove_1\"), valgrind_leak(\"./123-avl_remove_1\"))",
				:files => "270/1509/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Remove a node that does not change the balance",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"123-avl_remove.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_array_to_avl.c\", \"270/helpers/_avl_insert.c\", \"270/helpers/_binary_tree_rotate_left.c\", \"270/helpers/_binary_tree_rotate_right.c\", \"270/helpers/_binary_tree_balance.c\", \"270/helpers/_binary_tree_node.c\", \"270/1509/main_2.c\"], \"123-avl_remove_2\"), compare(\"./123-avl_remove_2\", \"270/1509/output_2\"), valgrind_error(\"./123-avl_remove_2\"), valgrind_leak(\"./123-avl_remove_2\"))",
				:files => "270/1509/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Remove a node that does not change the balance",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"123-avl_remove.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_array_to_avl.c\", \"270/helpers/_avl_insert.c\", \"270/helpers/_binary_tree_rotate_left.c\", \"270/helpers/_binary_tree_rotate_right.c\", \"270/helpers/_binary_tree_balance.c\", \"270/helpers/_binary_tree_node.c\", \"270/1509/main_3.c\"], \"123-avl_remove_3\"), compare(\"./123-avl_remove_3\", \"270/1509/output_3\"), valgrind_error(\"./123-avl_remove_3\"), valgrind_leak(\"./123-avl_remove_3\"))",
				:files => "270/1509/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Remove several nodes in a row",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"123-avl_remove.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_array_to_avl.c\", \"270/helpers/_avl_insert.c\", \"270/helpers/_binary_tree_rotate_left.c\", \"270/helpers/_binary_tree_rotate_right.c\", \"270/helpers/_binary_tree_balance.c\", \"270/helpers/_binary_tree_node.c\", \"270/1509/main_4.c\"], \"123-avl_remove_4\"), compare(\"./123-avl_remove_4\", \"270/1509/output_4\"), valgrind_error(\"./123-avl_remove_4\"), valgrind_leak(\"./123-avl_remove_4\"))",
				:files => "270/1509/main_4.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `avl_remove(NULL, 12);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 15,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"123-avl_remove.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_array_to_avl.c\", \"270/helpers/_avl_insert.c\", \"270/helpers/_binary_tree_rotate_left.c\", \"270/helpers/_binary_tree_rotate_right.c\", \"270/helpers/_binary_tree_balance.c\", \"270/helpers/_binary_tree_node.c\", \"270/1509/main_5.c\"], \"123-avl_remove_5\"), compare(\"./123-avl_remove_5\", \"270/1509/output_5\"), valgrind_error(\"./123-avl_remove_5\"), valgrind_leak(\"./123-avl_remove_5\"))",
				:files => "270/1509/main_5.c"
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
				:command => "betty_code([\"123-avl_remove.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\"])"
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
				:command => "betty_doc([\"123-avl_remove.c\", \"14-binary_tree_balance.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\"])"
			}
		]
	}
]
