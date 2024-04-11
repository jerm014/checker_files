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
				:command => "files_exist([\"5-binary_tree_is_root.c\"])"
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
				:command => "gcc([\"5-binary_tree_is_root.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1472/main_0.c\"], \"5-binary_tree_is_root_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Root node",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./5-binary_tree_is_root_0\", \"270/1472/output_0\"), valgrind_error(\"./5-binary_tree_is_root_0\"), valgrind_leak(\"./5-binary_tree_is_root_0\"))",
				:files => "270/1472/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Right child of the root node",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"5-binary_tree_is_root.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1472/main_1.c\"], \"5-binary_tree_is_root_1\"), compare(\"./5-binary_tree_is_root_1\", \"270/1472/output_1\"), valgrind_error(\"./5-binary_tree_is_root_1\"), valgrind_leak(\"./5-binary_tree_is_root_1\"))",
				:files => "270/1472/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Left child of the root node",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"5-binary_tree_is_root.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1472/main_2.c\"], \"5-binary_tree_is_root_2\"), compare(\"./5-binary_tree_is_root_2\", \"270/1472/output_2\"), valgrind_error(\"./5-binary_tree_is_root_2\"), valgrind_leak(\"./5-binary_tree_is_root_2\"))",
				:files => "270/1472/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_is_root(NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"5-binary_tree_is_root.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1472/main_3.c\"], \"5-binary_tree_is_root_3\"), compare(\"./5-binary_tree_is_root_3\", \"270/1472/output_3\"), valgrind_error(\"./5-binary_tree_is_root_3\"), valgrind_leak(\"./5-binary_tree_is_root_3\"))",
				:files => "270/1472/main_3.c"
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
				:command => "betty_code([\"5-binary_tree_is_root.c\"])"
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
				:command => "betty_doc([\"5-binary_tree_is_root.c\"])"
			}
		]
	}
]
