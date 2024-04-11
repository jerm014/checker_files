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
				:command => "files_exist([\"104-binary_tree_rotate_right.c\"])"
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
				:command => "gcc([\"104-binary_tree_rotate_right.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1506/main_0.c\"], \"104-binary_tree_rotate_right_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Left left case",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./104-binary_tree_rotate_right_0\", \"270/1506/output_0\"), valgrind_error(\"./104-binary_tree_rotate_right_0\"), valgrind_leak(\"./104-binary_tree_rotate_right_0\"))",
				:files => "270/1506/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Left left case 2",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"104-binary_tree_rotate_right.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1506/main_1.c\"], \"104-binary_tree_rotate_right_1\"), compare(\"./104-binary_tree_rotate_right_1\", \"270/1506/output_1\"), valgrind_error(\"./104-binary_tree_rotate_right_1\"), valgrind_leak(\"./104-binary_tree_rotate_right_1\"))",
				:files => "270/1506/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Left left case 3. Left child has right child",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"104-binary_tree_rotate_right.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1506/main_2.c\"], \"104-binary_tree_rotate_right_2\"), compare(\"./104-binary_tree_rotate_right_2\", \"270/1506/output_2\"), valgrind_error(\"./104-binary_tree_rotate_right_2\"), valgrind_leak(\"./104-binary_tree_rotate_right_2\"))",
				:files => "270/1506/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Left left case 4. Root has right child, and left child has right child",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"104-binary_tree_rotate_right.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1506/main_3.c\"], \"104-binary_tree_rotate_right_3\"), compare(\"./104-binary_tree_rotate_right_3\", \"270/1506/output_3\"), valgrind_error(\"./104-binary_tree_rotate_right_3\"), valgrind_leak(\"./104-binary_tree_rotate_right_3\"))",
				:files => "270/1506/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_rotate_right(NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"104-binary_tree_rotate_right.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1506/main_4.c\"], \"104-binary_tree_rotate_right_4\"), compare(\"./104-binary_tree_rotate_right_4\", \"270/1506/output_4\"), valgrind_error(\"./104-binary_tree_rotate_right_4\"), valgrind_leak(\"./104-binary_tree_rotate_right_4\"))",
				:files => "270/1506/main_4.c"
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
				:command => "betty_code([\"104-binary_tree_rotate_right.c\"])"
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
				:command => "betty_doc([\"104-binary_tree_rotate_right.c\"])"
			}
		]
	}
]
