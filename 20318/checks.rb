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
				:command => "files_exist([\"103-binary_tree_rotate_left.c\"])"
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
				:command => "gcc([\"103-binary_tree_rotate_left.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1505/main_0.c\"], \"103-binary_tree_rotate_left_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Right right case",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./103-binary_tree_rotate_left_0\", \"270/1505/output_0\"), valgrind_error(\"./103-binary_tree_rotate_left_0\"), valgrind_leak(\"./103-binary_tree_rotate_left_0\"))",
				:files => "270/1505/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Right right case 2",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"103-binary_tree_rotate_left.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1505/main_1.c\"], \"103-binary_tree_rotate_left_1\"), compare(\"./103-binary_tree_rotate_left_1\", \"270/1505/output_1\"), valgrind_error(\"./103-binary_tree_rotate_left_1\"), valgrind_leak(\"./103-binary_tree_rotate_left_1\"))",
				:files => "270/1505/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Right right case 3. Right child has left child",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"103-binary_tree_rotate_left.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1505/main_2.c\"], \"103-binary_tree_rotate_left_2\"), compare(\"./103-binary_tree_rotate_left_2\", \"270/1505/output_2\"), valgrind_error(\"./103-binary_tree_rotate_left_2\"), valgrind_leak(\"./103-binary_tree_rotate_left_2\"))",
				:files => "270/1505/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Right right case 4. Root has left child, and right child has left child",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"103-binary_tree_rotate_left.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1505/main_3.c\"], \"103-binary_tree_rotate_left_3\"), compare(\"./103-binary_tree_rotate_left_3\", \"270/1505/output_3\"), valgrind_error(\"./103-binary_tree_rotate_left_3\"), valgrind_leak(\"./103-binary_tree_rotate_left_3\"))",
				:files => "270/1505/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_rotate_left(NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"103-binary_tree_rotate_left.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1505/main_4.c\"], \"103-binary_tree_rotate_left_4\"), compare(\"./103-binary_tree_rotate_left_4\", \"270/1505/output_4\"), valgrind_error(\"./103-binary_tree_rotate_left_4\"), valgrind_leak(\"./103-binary_tree_rotate_left_4\"))",
				:files => "270/1505/main_4.c"
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
				:command => "betty_code([\"103-binary_tree_rotate_left.c\"])"
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
				:command => "betty_doc([\"103-binary_tree_rotate_left.c\"])"
			}
		]
	}
]
