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
				:command => "files_exist([\"17-binary_tree_sibling.c\"])"
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
				:command => "gcc([\"17-binary_tree_sibling.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1558/main_0.c\"], \"17-binary_tree_sibling_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Perfect tree of height 3. Find the sibling of a node with depth of 2",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./17-binary_tree_sibling_0\", \"270/1558/output_0\"), valgrind_error(\"./17-binary_tree_sibling_0\"), valgrind_leak(\"./17-binary_tree_sibling_0\"))",
				:files => "270/1558/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Perfect tree of height 3. Find the sibling of a node with depth of 2 (mirror)",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"17-binary_tree_sibling.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1558/main_1.c\"], \"17-binary_tree_sibling_1\"), compare(\"./17-binary_tree_sibling_1\", \"270/1558/output_1\"), valgrind_error(\"./17-binary_tree_sibling_1\"), valgrind_leak(\"./17-binary_tree_sibling_1\"))",
				:files => "270/1558/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Perfect tree of height 3. Find the sibling of a node with depth of 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"17-binary_tree_sibling.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1558/main_2.c\"], \"17-binary_tree_sibling_2\"), compare(\"./17-binary_tree_sibling_2\", \"270/1558/output_2\"), valgrind_error(\"./17-binary_tree_sibling_2\"), valgrind_leak(\"./17-binary_tree_sibling_2\"))",
				:files => "270/1558/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Perfect tree of height 3. Find the sibling of a node with depth of 3 (mirror)",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"17-binary_tree_sibling.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1558/main_3.c\"], \"17-binary_tree_sibling_3\"), compare(\"./17-binary_tree_sibling_3\", \"270/1558/output_3\"), valgrind_error(\"./17-binary_tree_sibling_3\"), valgrind_leak(\"./17-binary_tree_sibling_3\"))",
				:files => "270/1558/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Left child with no sibling",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"17-binary_tree_sibling.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1558/main_4.c\"], \"17-binary_tree_sibling_4\"), compare(\"./17-binary_tree_sibling_4\", \"270/1558/output_4\"), valgrind_error(\"./17-binary_tree_sibling_4\"), valgrind_leak(\"./17-binary_tree_sibling_4\"))",
				:files => "270/1558/main_4.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Right child with no sibling",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 15,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"17-binary_tree_sibling.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1558/main_5.c\"], \"17-binary_tree_sibling_5\"), compare(\"./17-binary_tree_sibling_5\", \"270/1558/output_5\"), valgrind_error(\"./17-binary_tree_sibling_5\"), valgrind_leak(\"./17-binary_tree_sibling_5\"))",
				:files => "270/1558/main_5.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Root node (no parent)",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 16,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"17-binary_tree_sibling.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1558/main_6.c\"], \"17-binary_tree_sibling_6\"), compare(\"./17-binary_tree_sibling_6\", \"270/1558/output_6\"), valgrind_error(\"./17-binary_tree_sibling_6\"), valgrind_leak(\"./17-binary_tree_sibling_6\"))",
				:files => "270/1558/main_6.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_sibling(NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 17,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"17-binary_tree_sibling.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1558/main_7.c\"], \"17-binary_tree_sibling_7\"), compare(\"./17-binary_tree_sibling_7\", \"270/1558/output_7\"), valgrind_error(\"./17-binary_tree_sibling_7\"), valgrind_leak(\"./17-binary_tree_sibling_7\"))",
				:files => "270/1558/main_7.c"
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
				:command => "betty_code([\"17-binary_tree_sibling.c\"])"
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
				:command => "betty_doc([\"17-binary_tree_sibling.c\"])"
			}
		]
	}
]
