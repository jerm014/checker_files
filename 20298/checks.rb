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
				:command => "files_exist([\"3-binary_tree_delete.c\"])"
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
				:command => "gcc([\"3-binary_tree_delete.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/1470/main_0.c\"], \"3-binary_tree_delete_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "No memory leak - case: Delete a single node (no children)",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(valgrind_error(\"./3-binary_tree_delete_0\"), valgrind_leak(\"./3-binary_tree_delete_0\"))",
				:files => "270/1470/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "No memory leak - case: Delete a tree with only a left child and a right child",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"3-binary_tree_delete.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/1470/main_1.c\"], \"3-binary_tree_delete_1\"), valgrind_error(\"./3-binary_tree_delete_1\"), valgrind_leak(\"./3-binary_tree_delete_1\"))",
				:files => "270/1470/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "No memory leak - case: Delete a tree of height 2",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"3-binary_tree_delete.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/1470/main_2.c\"], \"3-binary_tree_delete_2\"), valgrind_error(\"./3-binary_tree_delete_2\"), valgrind_leak(\"./3-binary_tree_delete_2\"))",
				:files => "270/1470/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "No memory leak - case: `binary_tree_delete(NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"3-binary_tree_delete.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/1470/main_3.c\"], \"3-binary_tree_delete_3\"), valgrind_error(\"./3-binary_tree_delete_3\"), valgrind_leak(\"./3-binary_tree_delete_3\"))",
				:files => "270/1470/main_3.c"
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
				:command => "betty_code([\"3-binary_tree_delete.c\"])"
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
				:command => "betty_doc([\"3-binary_tree_delete.c\"])"
			}
		]
	}
]
