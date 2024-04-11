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
				:command => "files_exist([\"114-bst_remove.c\"])"
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
				:command => "gcc([\"114-bst_remove.c\", \"270/binary_tree_print.c\", \"270/helpers/_array_to_bst.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_bst_insert.c\", \"270/1503/main_0.c\"], \"114-bst_remove_0\")"
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
				:command => "op_and(compare(\"./114-bst_remove_0\", \"270/1503/output_0\"), valgrind_error(\"./114-bst_remove_0\"))",
				:files => "270/1503/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Remove a node with both left and right children",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"114-bst_remove.c\", \"270/binary_tree_print.c\", \"270/helpers/_array_to_bst.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_bst_insert.c\", \"270/1503/main_1.c\"], \"114-bst_remove_1\"), compare(\"./114-bst_remove_1\", \"270/1503/output_1\"), valgrind_error(\"./114-bst_remove_1\"))",
				:files => "270/1503/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Remove a node with only a left child",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"114-bst_remove.c\", \"270/binary_tree_print.c\", \"270/helpers/_array_to_bst.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_bst_insert.c\", \"270/1503/main_2.c\"], \"114-bst_remove_2\"), compare(\"./114-bst_remove_2\", \"270/1503/output_2\"), valgrind_error(\"./114-bst_remove_2\"))",
				:files => "270/1503/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Remove the root node",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"114-bst_remove.c\", \"270/binary_tree_print.c\", \"270/helpers/_array_to_bst.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_bst_insert.c\", \"270/1503/main_3.c\"], \"114-bst_remove_3\"), compare(\"./114-bst_remove_3\", \"270/1503/output_3\"), valgrind_error(\"./114-bst_remove_3\"))",
				:files => "270/1503/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `bst_remove(NULL, 12);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"114-bst_remove.c\", \"270/binary_tree_print.c\", \"270/helpers/_array_to_bst.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_bst_insert.c\", \"270/1503/main_4.c\"], \"114-bst_remove_4\"), compare(\"./114-bst_remove_4\", \"270/1503/output_4\"), valgrind_error(\"./114-bst_remove_4\"))",
				:files => "270/1503/main_4.c"
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
				:command => "betty_code([\"114-bst_remove.c\"])"
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
				:command => "betty_doc([\"114-bst_remove.c\"])"
			}
		]
	}
]
