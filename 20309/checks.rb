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
				:command => "files_exist([\"14-binary_tree_balance.c\"])"
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
				:command => "gcc([\"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1481/main_0.c\"], \"14-binary_tree_balance_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Single node",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./14-binary_tree_balance_0\", \"270/1481/output_0\"), valgrind_error(\"./14-binary_tree_balance_0\"), valgrind_leak(\"./14-binary_tree_balance_0\"))",
				:files => "270/1481/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Perfect tree of height 1",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1481/main_1.c\"], \"14-binary_tree_balance_1\"), compare(\"./14-binary_tree_balance_1\", \"270/1481/output_1\"), valgrind_error(\"./14-binary_tree_balance_1\"), valgrind_leak(\"./14-binary_tree_balance_1\"))",
				:files => "270/1481/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Left-height = 2 and right-height = 1",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1481/main_2.c\"], \"14-binary_tree_balance_2\"), compare(\"./14-binary_tree_balance_2\", \"270/1481/output_2\"), valgrind_error(\"./14-binary_tree_balance_2\"), valgrind_leak(\"./14-binary_tree_balance_2\"))",
				:files => "270/1481/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Left-height = 2 and right-height = 0",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1481/main_3.c\"], \"14-binary_tree_balance_3\"), compare(\"./14-binary_tree_balance_3\", \"270/1481/output_3\"), valgrind_error(\"./14-binary_tree_balance_3\"), valgrind_leak(\"./14-binary_tree_balance_3\"))",
				:files => "270/1481/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Left-height = 3 and right-height = 0",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1481/main_4.c\"], \"14-binary_tree_balance_4\"), compare(\"./14-binary_tree_balance_4\", \"270/1481/output_4\"), valgrind_error(\"./14-binary_tree_balance_4\"), valgrind_leak(\"./14-binary_tree_balance_4\"))",
				:files => "270/1481/main_4.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Left-height = 0 and right-height = 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 15,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1481/main_5.c\"], \"14-binary_tree_balance_5\"), compare(\"./14-binary_tree_balance_5\", \"270/1481/output_5\"), valgrind_error(\"./14-binary_tree_balance_5\"), valgrind_leak(\"./14-binary_tree_balance_5\"))",
				:files => "270/1481/main_5.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_balance(NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 16,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"14-binary_tree_balance.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1481/main_6.c\"], \"14-binary_tree_balance_6\"), compare(\"./14-binary_tree_balance_6\", \"270/1481/output_6\"), valgrind_error(\"./14-binary_tree_balance_6\"), valgrind_leak(\"./14-binary_tree_balance_6\"))",
				:files => "270/1481/main_6.c"
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
				:command => "betty_code([\"14-binary_tree_balance.c\"])"
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
				:command => "betty_doc([\"14-binary_tree_balance.c\"])"
			}
		]
	}
]
