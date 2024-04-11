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
				:command => "files_exist([\"120-binary_tree_is_avl.c\"])"
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
				:command => "gcc([\"120-binary_tree_is_avl.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/1553/main_0.c\"], \"120-binary_tree_is_avl_0\")"
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
				:command => "op_and(compare(\"./120-binary_tree_is_avl_0\", \"270/1553/output_0\"), valgrind_error(\"./120-binary_tree_is_avl_0\"), valgrind_leak(\"./120-binary_tree_is_avl_0\"))",
				:files => "270/1553/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Perfect BST of height 1",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"120-binary_tree_is_avl.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/1553/main_1.c\"], \"120-binary_tree_is_avl_1\"), compare(\"./120-binary_tree_is_avl_1\", \"270/1553/output_1\"), valgrind_error(\"./120-binary_tree_is_avl_1\"), valgrind_leak(\"./120-binary_tree_is_avl_1\"))",
				:files => "270/1553/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Perfect BST of height 2",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"120-binary_tree_is_avl.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/1553/main_2.c\"], \"120-binary_tree_is_avl_2\"), compare(\"./120-binary_tree_is_avl_2\", \"270/1553/output_2\"), valgrind_error(\"./120-binary_tree_is_avl_2\"), valgrind_leak(\"./120-binary_tree_is_avl_2\"))",
				:files => "270/1553/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Perfect BST of height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"120-binary_tree_is_avl.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/1553/main_3.c\"], \"120-binary_tree_is_avl_3\"), compare(\"./120-binary_tree_is_avl_3\", \"270/1553/output_3\"), valgrind_error(\"./120-binary_tree_is_avl_3\"), valgrind_leak(\"./120-binary_tree_is_avl_3\"))",
				:files => "270/1553/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: One value in right subtree is lower than root node value",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"120-binary_tree_is_avl.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/1553/main_4.c\"], \"120-binary_tree_is_avl_4\"), compare(\"./120-binary_tree_is_avl_4\", \"270/1553/output_4\"), valgrind_error(\"./120-binary_tree_is_avl_4\"), valgrind_leak(\"./120-binary_tree_is_avl_4\"))",
				:files => "270/1553/main_4.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: One value in left subtree is greater than root node value",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 15,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"120-binary_tree_is_avl.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/1553/main_5.c\"], \"120-binary_tree_is_avl_5\"), compare(\"./120-binary_tree_is_avl_5\", \"270/1553/output_5\"), valgrind_error(\"./120-binary_tree_is_avl_5\"), valgrind_leak(\"./120-binary_tree_is_avl_5\"))",
				:files => "270/1553/main_5.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Duplicated value in left subtree",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 16,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"120-binary_tree_is_avl.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/1553/main_6.c\"], \"120-binary_tree_is_avl_6\"), compare(\"./120-binary_tree_is_avl_6\", \"270/1553/output_6\"), valgrind_error(\"./120-binary_tree_is_avl_6\"), valgrind_leak(\"./120-binary_tree_is_avl_6\"))",
				:files => "270/1553/main_6.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Duplicated value in right subtree",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 17,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"120-binary_tree_is_avl.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/1553/main_7.c\"], \"120-binary_tree_is_avl_7\"), compare(\"./120-binary_tree_is_avl_7\", \"270/1553/output_7\"), valgrind_error(\"./120-binary_tree_is_avl_7\"), valgrind_leak(\"./120-binary_tree_is_avl_7\"))",
				:files => "270/1553/main_7.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Balance factor lower than -1",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 18,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"120-binary_tree_is_avl.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/1553/main_8.c\"], \"120-binary_tree_is_avl_8\"), compare(\"./120-binary_tree_is_avl_8\", \"270/1553/output_8\"), valgrind_error(\"./120-binary_tree_is_avl_8\"), valgrind_leak(\"./120-binary_tree_is_avl_8\"))",
				:files => "270/1553/main_8.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Balance factor greater than +1",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 19,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"120-binary_tree_is_avl.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/1553/main_9.c\"], \"120-binary_tree_is_avl_9\"), compare(\"./120-binary_tree_is_avl_9\", \"270/1553/output_9\"), valgrind_error(\"./120-binary_tree_is_avl_9\"), valgrind_leak(\"./120-binary_tree_is_avl_9\"))",
				:files => "270/1553/main_9.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Balance factor of left subtree greater than +1",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 20,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"120-binary_tree_is_avl.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/1553/main_10.c\"], \"120-binary_tree_is_avl_10\"), compare(\"./120-binary_tree_is_avl_10\", \"270/1553/output_10\"), valgrind_error(\"./120-binary_tree_is_avl_10\"), valgrind_leak(\"./120-binary_tree_is_avl_10\"))",
				:files => "270/1553/main_10.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Balance factor of right subtree lower than -1",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 21,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"120-binary_tree_is_avl.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/1553/main_11.c\"], \"120-binary_tree_is_avl_11\"), compare(\"./120-binary_tree_is_avl_11\", \"270/1553/output_11\"), valgrind_error(\"./120-binary_tree_is_avl_11\"), valgrind_leak(\"./120-binary_tree_is_avl_11\"))",
				:files => "270/1553/main_11.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_is_avl(NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 22,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"120-binary_tree_is_avl.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/1553/main_12.c\"], \"120-binary_tree_is_avl_12\"), compare(\"./120-binary_tree_is_avl_12\", \"270/1553/output_12\"), valgrind_error(\"./120-binary_tree_is_avl_12\"), valgrind_leak(\"./120-binary_tree_is_avl_12\"))",
				:files => "270/1553/main_12.c"
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
				:command => "betty_code([\"120-binary_tree_is_avl.c\"])"
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
				:command => "betty_doc([\"120-binary_tree_is_avl.c\"])"
			}
		]
	}
]
