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
				:command => "files_exist([\"8-binary_tree_postorder.c\"])"
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
				:command => "gcc([\"8-binary_tree_postorder.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1475/main_0.c\"], \"8-binary_tree_postorder_0\")"
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
				:command => "op_and(compare(\"./8-binary_tree_postorder_0\", \"270/1475/output_0\"), valgrind_error(\"./8-binary_tree_postorder_0\"), valgrind_leak(\"./8-binary_tree_postorder_0\"))",
				:files => "270/1475/main_0.c"
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
				:command => "op_and(gcc([\"8-binary_tree_postorder.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1475/main_1.c\"], \"8-binary_tree_postorder_1\"), compare(\"./8-binary_tree_postorder_1\", \"270/1475/output_1\"), valgrind_error(\"./8-binary_tree_postorder_1\"), valgrind_leak(\"./8-binary_tree_postorder_1\"))",
				:files => "270/1475/main_1.c"
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
				:command => "op_and(gcc([\"8-binary_tree_postorder.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1475/main_2.c\"], \"8-binary_tree_postorder_2\"), compare(\"./8-binary_tree_postorder_2\", \"270/1475/output_2\"), valgrind_error(\"./8-binary_tree_postorder_2\"), valgrind_leak(\"./8-binary_tree_postorder_2\"))",
				:files => "270/1475/main_2.c"
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
				:command => "op_and(gcc([\"8-binary_tree_postorder.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1475/main_3.c\"], \"8-binary_tree_postorder_3\"), compare(\"./8-binary_tree_postorder_3\", \"270/1475/output_3\"), valgrind_error(\"./8-binary_tree_postorder_3\"), valgrind_leak(\"./8-binary_tree_postorder_3\"))",
				:files => "270/1475/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_postorder(NULL, &_func);` where `_func` is a valid pointer",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"8-binary_tree_postorder.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1475/main_4.c\"], \"8-binary_tree_postorder_4\"), compare(\"./8-binary_tree_postorder_4\", \"270/1475/output_4\"), valgrind_error(\"./8-binary_tree_postorder_4\"), valgrind_leak(\"./8-binary_tree_postorder_4\"))",
				:files => "270/1475/main_4.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_postorder(root, NULL);` where `root` is a valid pointer",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 15,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"8-binary_tree_postorder.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1475/main_5.c\"], \"8-binary_tree_postorder_5\"), compare(\"./8-binary_tree_postorder_5\", \"270/1475/output_5\"), valgrind_error(\"./8-binary_tree_postorder_5\"), valgrind_leak(\"./8-binary_tree_postorder_5\"))",
				:files => "270/1475/main_5.c"
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
				:command => "betty_code([\"8-binary_tree_postorder.c\"])"
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
				:command => "betty_doc([\"8-binary_tree_postorder.c\"])"
			}
		]
	}
]
