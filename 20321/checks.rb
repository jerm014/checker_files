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
				:command => "files_exist([\"122-array_to_avl.c\", \"121-avl_insert.c\", \"0-binary_tree_node.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"14-binary_tree_balance.c\"])"
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
				:command => "gcc([\"122-array_to_avl.c\", \"121-avl_insert.c\", \"0-binary_tree_node.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1508/main_0.c\"], \"122-array_to_avl_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Array with a single value",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./122-array_to_avl_0\", \"270/1508/output_0\"), valgrind_error(\"./122-array_to_avl_0\"), valgrind_leak(\"./122-array_to_avl_0\"))",
				:files => "270/1508/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Array with 3 values. No rotation needed",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"122-array_to_avl.c\", \"121-avl_insert.c\", \"0-binary_tree_node.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1508/main_1.c\"], \"122-array_to_avl_1\"), compare(\"./122-array_to_avl_1\", \"270/1508/output_1\"), valgrind_error(\"./122-array_to_avl_1\"), valgrind_leak(\"./122-array_to_avl_1\"))",
				:files => "270/1508/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Array with 9 values",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"122-array_to_avl.c\", \"121-avl_insert.c\", \"0-binary_tree_node.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1508/main_2.c\"], \"122-array_to_avl_2\"), compare(\"./122-array_to_avl_2\", \"270/1508/output_2\"), valgrind_error(\"./122-array_to_avl_2\"), valgrind_leak(\"./122-array_to_avl_2\"))",
				:files => "270/1508/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Array with 50 values",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"122-array_to_avl.c\", \"121-avl_insert.c\", \"0-binary_tree_node.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1508/main_3.c\"], \"122-array_to_avl_3\"), compare(\"./122-array_to_avl_3\", \"270/1508/output_3\"), valgrind_error(\"./122-array_to_avl_3\"), valgrind_leak(\"./122-array_to_avl_3\"))",
				:files => "270/1508/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Array with 15 values in ascending order",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"122-array_to_avl.c\", \"121-avl_insert.c\", \"0-binary_tree_node.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1508/main_4.c\"], \"122-array_to_avl_4\"), compare(\"./122-array_to_avl_4\", \"270/1508/output_4\"), valgrind_error(\"./122-array_to_avl_4\"), valgrind_leak(\"./122-array_to_avl_4\"))",
				:files => "270/1508/main_4.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Array with 15 value in descending order",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 15,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"122-array_to_avl.c\", \"121-avl_insert.c\", \"0-binary_tree_node.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1508/main_5.c\"], \"122-array_to_avl_5\"), compare(\"./122-array_to_avl_5\", \"270/1508/output_5\"), valgrind_error(\"./122-array_to_avl_5\"), valgrind_leak(\"./122-array_to_avl_5\"))",
				:files => "270/1508/main_5.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Array with 3 values: Right left case",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 16,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"122-array_to_avl.c\", \"121-avl_insert.c\", \"0-binary_tree_node.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1508/main_6.c\"], \"122-array_to_avl_6\"), compare(\"./122-array_to_avl_6\", \"270/1508/output_6\"), valgrind_error(\"./122-array_to_avl_6\"), valgrind_leak(\"./122-array_to_avl_6\"))",
				:files => "270/1508/main_6.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Array with 3 values: Left right case",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 17,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"122-array_to_avl.c\", \"121-avl_insert.c\", \"0-binary_tree_node.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1508/main_7.c\"], \"122-array_to_avl_7\"), compare(\"./122-array_to_avl_7\", \"270/1508/output_7\"), valgrind_error(\"./122-array_to_avl_7\"), valgrind_leak(\"./122-array_to_avl_7\"))",
				:files => "270/1508/main_7.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `array_to_avl(NULL, 0);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 18,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"122-array_to_avl.c\", \"121-avl_insert.c\", \"0-binary_tree_node.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1508/main_8.c\"], \"122-array_to_avl_8\"), compare(\"./122-array_to_avl_8\", \"270/1508/output_8\"), valgrind_error(\"./122-array_to_avl_8\"), valgrind_leak(\"./122-array_to_avl_8\"))",
				:files => "270/1508/main_8.c"
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
				:command => "malloc(\"./122-array_to_avl_0\", \"c/malloc/libfake_malloc.so\")"
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
				:command => "betty_code([\"122-array_to_avl.c\", \"121-avl_insert.c\", \"0-binary_tree_node.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"14-binary_tree_balance.c\"])"
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
				:command => "betty_doc([\"122-array_to_avl.c\", \"121-avl_insert.c\", \"0-binary_tree_node.c\", \"103-binary_tree_rotate_left.c\", \"104-binary_tree_rotate_right.c\", \"14-binary_tree_balance.c\"])"
			}
		]
	}
]
