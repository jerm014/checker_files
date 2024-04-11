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
				:command => "files_exist([\"10-binary_tree_depth.c\"])"
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
				:command => "gcc([\"10-binary_tree_depth.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1477/main_0.c\"], \"10-binary_tree_depth_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Depth of root node in a perfect tree of height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./10-binary_tree_depth_0\", \"270/1477/output_0\"), valgrind_error(\"./10-binary_tree_depth_0\"), valgrind_leak(\"./10-binary_tree_depth_0\"))",
				:files => "270/1477/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Depth of left node in a perfect tree of height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"10-binary_tree_depth.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1477/main_1.c\"], \"10-binary_tree_depth_1\"), compare(\"./10-binary_tree_depth_1\", \"270/1477/output_1\"), valgrind_error(\"./10-binary_tree_depth_1\"), valgrind_leak(\"./10-binary_tree_depth_1\"))",
				:files => "270/1477/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Depth of right-left node in a perfect tree of height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"10-binary_tree_depth.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1477/main_2.c\"], \"10-binary_tree_depth_2\"), compare(\"./10-binary_tree_depth_2\", \"270/1477/output_2\"), valgrind_error(\"./10-binary_tree_depth_2\"), valgrind_leak(\"./10-binary_tree_depth_2\"))",
				:files => "270/1477/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Depth of right-right-left node in a perfect tree of height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"10-binary_tree_depth.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1477/main_3.c\"], \"10-binary_tree_depth_3\"), compare(\"./10-binary_tree_depth_3\", \"270/1477/output_3\"), valgrind_error(\"./10-binary_tree_depth_3\"), valgrind_leak(\"./10-binary_tree_depth_3\"))",
				:files => "270/1477/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_depth(NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"10-binary_tree_depth.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1477/main_4.c\"], \"10-binary_tree_depth_4\"), compare(\"./10-binary_tree_depth_4\", \"270/1477/output_4\"), valgrind_error(\"./10-binary_tree_depth_4\"), valgrind_leak(\"./10-binary_tree_depth_4\"))",
				:files => "270/1477/main_4.c"
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
				:command => "betty_code([\"10-binary_tree_depth.c\"])"
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
				:command => "betty_doc([\"10-binary_tree_depth.c\"])"
			}
		]
	}
]
