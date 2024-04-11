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
				:command => "files_exist([\"110-binary_tree_is_bst.c\"])"
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
				:command => "gcc([\"110-binary_tree_is_bst.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1552/main_0.c\"], \"110-binary_tree_is_bst_0\")"
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
				:command => "op_and(compare(\"./110-binary_tree_is_bst_0\", \"270/1552/output_0\"), valgrind_error(\"./110-binary_tree_is_bst_0\"), valgrind_leak(\"./110-binary_tree_is_bst_0\"))",
				:files => "270/1552/main_0.c"
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
				:command => "op_and(gcc([\"110-binary_tree_is_bst.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1552/main_1.c\"], \"110-binary_tree_is_bst_1\"), compare(\"./110-binary_tree_is_bst_1\", \"270/1552/output_1\"), valgrind_error(\"./110-binary_tree_is_bst_1\"), valgrind_leak(\"./110-binary_tree_is_bst_1\"))",
				:files => "270/1552/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Perfect tree of height 2",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"110-binary_tree_is_bst.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1552/main_2.c\"], \"110-binary_tree_is_bst_2\"), compare(\"./110-binary_tree_is_bst_2\", \"270/1552/output_2\"), valgrind_error(\"./110-binary_tree_is_bst_2\"), valgrind_leak(\"./110-binary_tree_is_bst_2\"))",
				:files => "270/1552/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Perfect tree of height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"110-binary_tree_is_bst.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1552/main_3.c\"], \"110-binary_tree_is_bst_3\"), compare(\"./110-binary_tree_is_bst_3\", \"270/1552/output_3\"), valgrind_error(\"./110-binary_tree_is_bst_3\"), valgrind_leak(\"./110-binary_tree_is_bst_3\"))",
				:files => "270/1552/main_3.c"
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
				:command => "op_and(gcc([\"110-binary_tree_is_bst.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1552/main_4.c\"], \"110-binary_tree_is_bst_4\"), compare(\"./110-binary_tree_is_bst_4\", \"270/1552/output_4\"), valgrind_error(\"./110-binary_tree_is_bst_4\"), valgrind_leak(\"./110-binary_tree_is_bst_4\"))",
				:files => "270/1552/main_4.c"
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
				:command => "op_and(gcc([\"110-binary_tree_is_bst.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1552/main_5.c\"], \"110-binary_tree_is_bst_5\"), compare(\"./110-binary_tree_is_bst_5\", \"270/1552/output_5\"), valgrind_error(\"./110-binary_tree_is_bst_5\"), valgrind_leak(\"./110-binary_tree_is_bst_5\"))",
				:files => "270/1552/main_5.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Duplicated value on left subtree",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 16,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"110-binary_tree_is_bst.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1552/main_6.c\"], \"110-binary_tree_is_bst_6\"), compare(\"./110-binary_tree_is_bst_6\", \"270/1552/output_6\"), valgrind_error(\"./110-binary_tree_is_bst_6\"), valgrind_leak(\"./110-binary_tree_is_bst_6\"))",
				:files => "270/1552/main_6.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Duplicated value on right subtree",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 17,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"110-binary_tree_is_bst.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1552/main_7.c\"], \"110-binary_tree_is_bst_7\"), compare(\"./110-binary_tree_is_bst_7\", \"270/1552/output_7\"), valgrind_error(\"./110-binary_tree_is_bst_7\"), valgrind_leak(\"./110-binary_tree_is_bst_7\"))",
				:files => "270/1552/main_7.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_is_bst(NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 18,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"110-binary_tree_is_bst.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1552/main_8.c\"], \"110-binary_tree_is_bst_8\"), compare(\"./110-binary_tree_is_bst_8\", \"270/1552/output_8\"), valgrind_error(\"./110-binary_tree_is_bst_8\"), valgrind_leak(\"./110-binary_tree_is_bst_8\"))",
				:files => "270/1552/main_8.c"
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
				:command => "betty_code([\"110-binary_tree_is_bst.c\"])"
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
				:command => "betty_doc([\"110-binary_tree_is_bst.c\"])"
			}
		]
	}
]
