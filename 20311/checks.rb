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
				:command => "files_exist([\"16-binary_tree_is_perfect.c\"])"
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
				:command => "gcc([\"16-binary_tree_is_perfect.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1483/main_0.c\"], \"16-binary_tree_is_perfect_0\")"
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
				:command => "op_and(compare(\"./16-binary_tree_is_perfect_0\", \"270/1483/output_0\"), valgrind_error(\"./16-binary_tree_is_perfect_0\"), valgrind_leak(\"./16-binary_tree_is_perfect_0\"))",
				:files => "270/1483/main_0.c"
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
				:command => "op_and(gcc([\"16-binary_tree_is_perfect.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1483/main_1.c\"], \"16-binary_tree_is_perfect_1\"), compare(\"./16-binary_tree_is_perfect_1\", \"270/1483/output_1\"), valgrind_error(\"./16-binary_tree_is_perfect_1\"), valgrind_leak(\"./16-binary_tree_is_perfect_1\"))",
				:files => "270/1483/main_1.c"
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
				:command => "op_and(gcc([\"16-binary_tree_is_perfect.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1483/main_2.c\"], \"16-binary_tree_is_perfect_2\"), compare(\"./16-binary_tree_is_perfect_2\", \"270/1483/output_2\"), valgrind_error(\"./16-binary_tree_is_perfect_2\"), valgrind_leak(\"./16-binary_tree_is_perfect_2\"))",
				:files => "270/1483/main_2.c"
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
				:command => "op_and(gcc([\"16-binary_tree_is_perfect.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1483/main_3.c\"], \"16-binary_tree_is_perfect_3\"), compare(\"./16-binary_tree_is_perfect_3\", \"270/1483/output_3\"), valgrind_error(\"./16-binary_tree_is_perfect_3\"), valgrind_leak(\"./16-binary_tree_is_perfect_3\"))",
				:files => "270/1483/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Not perfect tree of max height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"16-binary_tree_is_perfect.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1483/main_4.c\"], \"16-binary_tree_is_perfect_4\"), compare(\"./16-binary_tree_is_perfect_4\", \"270/1483/output_4\"), valgrind_error(\"./16-binary_tree_is_perfect_4\"), valgrind_leak(\"./16-binary_tree_is_perfect_4\"))",
				:files => "270/1483/main_4.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Full tree of max height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 15,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"16-binary_tree_is_perfect.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1483/main_5.c\"], \"16-binary_tree_is_perfect_5\"), compare(\"./16-binary_tree_is_perfect_5\", \"270/1483/output_5\"), valgrind_error(\"./16-binary_tree_is_perfect_5\"), valgrind_leak(\"./16-binary_tree_is_perfect_5\"))",
				:files => "270/1483/main_5.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Not perfect tree of max height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 16,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"16-binary_tree_is_perfect.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1483/main_6.c\"], \"16-binary_tree_is_perfect_6\"), compare(\"./16-binary_tree_is_perfect_6\", \"270/1483/output_6\"), valgrind_error(\"./16-binary_tree_is_perfect_6\"), valgrind_leak(\"./16-binary_tree_is_perfect_6\"))",
				:files => "270/1483/main_6.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Full tree of max height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 17,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"16-binary_tree_is_perfect.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1483/main_7.c\"], \"16-binary_tree_is_perfect_7\"), compare(\"./16-binary_tree_is_perfect_7\", \"270/1483/output_7\"), valgrind_error(\"./16-binary_tree_is_perfect_7\"), valgrind_leak(\"./16-binary_tree_is_perfect_7\"))",
				:files => "270/1483/main_7.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Not perfect tree of max height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 18,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"16-binary_tree_is_perfect.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1483/main_8.c\"], \"16-binary_tree_is_perfect_8\"), compare(\"./16-binary_tree_is_perfect_8\", \"270/1483/output_8\"), valgrind_error(\"./16-binary_tree_is_perfect_8\"), valgrind_leak(\"./16-binary_tree_is_perfect_8\"))",
				:files => "270/1483/main_8.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_is_perfect(NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 19,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"16-binary_tree_is_perfect.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1483/main_9.c\"], \"16-binary_tree_is_perfect_9\"), compare(\"./16-binary_tree_is_perfect_9\", \"270/1483/output_9\"), valgrind_error(\"./16-binary_tree_is_perfect_9\"), valgrind_leak(\"./16-binary_tree_is_perfect_9\"))",
				:files => "270/1483/main_9.c"
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
				:command => "betty_code([\"16-binary_tree_is_perfect.c\"])"
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
				:command => "betty_doc([\"16-binary_tree_is_perfect.c\"])"
			}
		]
	}
]
