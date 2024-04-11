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
				:command => "files_exist([\"132-array_to_heap.c\", \"131-heap_insert.c\", \"0-binary_tree_node.c\"])"
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
				:command => "gcc([\"132-array_to_heap.c\", \"131-heap_insert.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1547/main_0.c\"], \"132-array_to_heap_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Array with a single value",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./132-array_to_heap_0\", \"270/1547/output_0\"), valgrind_error(\"./132-array_to_heap_0\"), valgrind_leak(\"./132-array_to_heap_0\"))",
				:files => "270/1547/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Arrayw with 3 values (not sorted)",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"132-array_to_heap.c\", \"131-heap_insert.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1547/main_1.c\"], \"132-array_to_heap_1\"), compare(\"./132-array_to_heap_1\", \"270/1547/output_1\"), valgrind_error(\"./132-array_to_heap_1\"), valgrind_leak(\"./132-array_to_heap_1\"))",
				:files => "270/1547/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Arrayw with 9 values (not sorted)",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"132-array_to_heap.c\", \"131-heap_insert.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1547/main_2.c\"], \"132-array_to_heap_2\"), compare(\"./132-array_to_heap_2\", \"270/1547/output_2\"), valgrind_error(\"./132-array_to_heap_2\"), valgrind_leak(\"./132-array_to_heap_2\"))",
				:files => "270/1547/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Arrayw with 50 values (not sorted)",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"132-array_to_heap.c\", \"131-heap_insert.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1547/main_3.c\"], \"132-array_to_heap_3\"), compare(\"./132-array_to_heap_3\", \"270/1547/output_3\"), valgrind_error(\"./132-array_to_heap_3\"), valgrind_leak(\"./132-array_to_heap_3\"))",
				:files => "270/1547/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Arrayw with 3 values (sorted in DESC order)",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"132-array_to_heap.c\", \"131-heap_insert.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1547/main_4.c\"], \"132-array_to_heap_4\"), compare(\"./132-array_to_heap_4\", \"270/1547/output_4\"), valgrind_error(\"./132-array_to_heap_4\"), valgrind_leak(\"./132-array_to_heap_4\"))",
				:files => "270/1547/main_4.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `array_to_heap(NULL, 0);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 15,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"132-array_to_heap.c\", \"131-heap_insert.c\", \"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1547/main_5.c\"], \"132-array_to_heap_5\"), compare(\"./132-array_to_heap_5\", \"270/1547/output_5\"), valgrind_error(\"./132-array_to_heap_5\"), valgrind_leak(\"./132-array_to_heap_5\"))",
				:files => "270/1547/main_5.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Handled `malloc` return",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 20,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "malloc(\"./132-array_to_heap_0\", \"c/malloc/libfake_malloc.so\")"
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
				:command => "betty_code([\"132-array_to_heap.c\", \"131-heap_insert.c\", \"0-binary_tree_node.c\"])"
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
				:command => "betty_doc([\"132-array_to_heap.c\", \"131-heap_insert.c\", \"0-binary_tree_node.c\"])"
			}
		]
	}
]
