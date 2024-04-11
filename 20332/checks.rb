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
				:command => "files_exist([\"130-binary_tree_is_heap.c\"])"
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
				:command => "gcc([\"130-binary_tree_is_heap.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1554/main_0.c\"], \"130-binary_tree_is_heap_0\")"
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
				:command => "op_and(compare(\"./130-binary_tree_is_heap_0\", \"270/1554/output_0\"), valgrind_error(\"./130-binary_tree_is_heap_0\"), valgrind_leak(\"./130-binary_tree_is_heap_0\"))",
				:files => "270/1554/main_0.c"
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
				:command => "op_and(gcc([\"130-binary_tree_is_heap.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1554/main_1.c\"], \"130-binary_tree_is_heap_1\"), compare(\"./130-binary_tree_is_heap_1\", \"270/1554/output_1\"), valgrind_error(\"./130-binary_tree_is_heap_1\"), valgrind_leak(\"./130-binary_tree_is_heap_1\"))",
				:files => "270/1554/main_1.c"
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
				:command => "op_and(gcc([\"130-binary_tree_is_heap.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1554/main_2.c\"], \"130-binary_tree_is_heap_2\"), compare(\"./130-binary_tree_is_heap_2\", \"270/1554/output_2\"), valgrind_error(\"./130-binary_tree_is_heap_2\"), valgrind_leak(\"./130-binary_tree_is_heap_2\"))",
				:files => "270/1554/main_2.c"
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
				:command => "op_and(gcc([\"130-binary_tree_is_heap.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1554/main_3.c\"], \"130-binary_tree_is_heap_3\"), compare(\"./130-binary_tree_is_heap_3\", \"270/1554/output_3\"), valgrind_error(\"./130-binary_tree_is_heap_3\"), valgrind_leak(\"./130-binary_tree_is_heap_3\"))",
				:files => "270/1554/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: One node of right subtree is higher than its parent",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"130-binary_tree_is_heap.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1554/main_4.c\"], \"130-binary_tree_is_heap_4\"), compare(\"./130-binary_tree_is_heap_4\", \"270/1554/output_4\"), valgrind_error(\"./130-binary_tree_is_heap_4\"), valgrind_leak(\"./130-binary_tree_is_heap_4\"))",
				:files => "270/1554/main_4.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: One node in left subtree is higher than its parent",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 15,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"130-binary_tree_is_heap.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1554/main_5.c\"], \"130-binary_tree_is_heap_5\"), compare(\"./130-binary_tree_is_heap_5\", \"270/1554/output_5\"), valgrind_error(\"./130-binary_tree_is_heap_5\"), valgrind_leak(\"./130-binary_tree_is_heap_5\"))",
				:files => "270/1554/main_5.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Complete tree of max height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 16,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"130-binary_tree_is_heap.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1554/main_6.c\"], \"130-binary_tree_is_heap_6\"), compare(\"./130-binary_tree_is_heap_6\", \"270/1554/output_6\"), valgrind_error(\"./130-binary_tree_is_heap_6\"), valgrind_leak(\"./130-binary_tree_is_heap_6\"))",
				:files => "270/1554/main_6.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Complete tree of max height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 17,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"130-binary_tree_is_heap.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1554/main_7.c\"], \"130-binary_tree_is_heap_7\"), compare(\"./130-binary_tree_is_heap_7\", \"270/1554/output_7\"), valgrind_error(\"./130-binary_tree_is_heap_7\"), valgrind_leak(\"./130-binary_tree_is_heap_7\"))",
				:files => "270/1554/main_7.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Not complete tree of max height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 18,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"130-binary_tree_is_heap.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1554/main_8.c\"], \"130-binary_tree_is_heap_8\"), compare(\"./130-binary_tree_is_heap_8\", \"270/1554/output_8\"), valgrind_error(\"./130-binary_tree_is_heap_8\"), valgrind_leak(\"./130-binary_tree_is_heap_8\"))",
				:files => "270/1554/main_8.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Not complete tree of max height 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 19,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"130-binary_tree_is_heap.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1554/main_9.c\"], \"130-binary_tree_is_heap_9\"), compare(\"./130-binary_tree_is_heap_9\", \"270/1554/output_9\"), valgrind_error(\"./130-binary_tree_is_heap_9\"), valgrind_leak(\"./130-binary_tree_is_heap_9\"))",
				:files => "270/1554/main_9.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Not complete tree of max height 3 (mirror)",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 20,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"130-binary_tree_is_heap.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1554/main_10.c\"], \"130-binary_tree_is_heap_10\"), compare(\"./130-binary_tree_is_heap_10\", \"270/1554/output_10\"), valgrind_error(\"./130-binary_tree_is_heap_10\"), valgrind_leak(\"./130-binary_tree_is_heap_10\"))",
				:files => "270/1554/main_10.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Complete tree of max height 4 (only one node in depth 4)",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 21,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"130-binary_tree_is_heap.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1554/main_11.c\"], \"130-binary_tree_is_heap_11\"), compare(\"./130-binary_tree_is_heap_11\", \"270/1554/output_11\"), valgrind_error(\"./130-binary_tree_is_heap_11\"), valgrind_leak(\"./130-binary_tree_is_heap_11\"))",
				:files => "270/1554/main_11.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_is_heap(NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 22,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"130-binary_tree_is_heap.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1554/main_12.c\"], \"130-binary_tree_is_heap_12\"), compare(\"./130-binary_tree_is_heap_12\", \"270/1554/output_12\"), valgrind_error(\"./130-binary_tree_is_heap_12\"), valgrind_leak(\"./130-binary_tree_is_heap_12\"))",
				:files => "270/1554/main_12.c"
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
				:command => "betty_code([\"130-binary_tree_is_heap.c\"])"
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
				:command => "betty_doc([\"130-binary_tree_is_heap.c\"])"
			}
		]
	}
]
