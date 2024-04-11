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
				:command => "files_exist([\"134-heap_to_sorted_array.c\", \"133-heap_extract.c\"])"
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
				:command => "gcc([\"134-heap_to_sorted_array.c\", \"133-heap_extract.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_heap_insert.c\", \"270/helpers/_array_to_heap.c\", \"270/1565/main_0.c\"], \"134-heap_to_sorted_array_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Heap of size 1",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./134-heap_to_sorted_array_0\", \"270/1565/output_0\"), valgrind_error(\"./134-heap_to_sorted_array_0\"), valgrind_leak(\"./134-heap_to_sorted_array_0\"))",
				:files => "270/1565/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Heap of size 3",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"134-heap_to_sorted_array.c\", \"133-heap_extract.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_heap_insert.c\", \"270/helpers/_array_to_heap.c\", \"270/1565/main_1.c\"], \"134-heap_to_sorted_array_1\"), compare(\"./134-heap_to_sorted_array_1\", \"270/1565/output_1\"), valgrind_error(\"./134-heap_to_sorted_array_1\"), valgrind_leak(\"./134-heap_to_sorted_array_1\"))",
				:files => "270/1565/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Heap of size 9",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"134-heap_to_sorted_array.c\", \"133-heap_extract.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_heap_insert.c\", \"270/helpers/_array_to_heap.c\", \"270/1565/main_2.c\"], \"134-heap_to_sorted_array_2\"), compare(\"./134-heap_to_sorted_array_2\", \"270/1565/output_2\"), valgrind_error(\"./134-heap_to_sorted_array_2\"), valgrind_leak(\"./134-heap_to_sorted_array_2\"))",
				:files => "270/1565/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Heap of size 50",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"134-heap_to_sorted_array.c\", \"133-heap_extract.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_heap_insert.c\", \"270/helpers/_array_to_heap.c\", \"270/1565/main_3.c\"], \"134-heap_to_sorted_array_3\"), compare(\"./134-heap_to_sorted_array_3\", \"270/1565/output_3\"), valgrind_error(\"./134-heap_to_sorted_array_3\"), valgrind_leak(\"./134-heap_to_sorted_array_3\"))",
				:files => "270/1565/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `heap_to_sorted_array(NULL, &out_size);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"134-heap_to_sorted_array.c\", \"133-heap_extract.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_heap_insert.c\", \"270/helpers/_array_to_heap.c\", \"270/1565/main_4.c\"], \"134-heap_to_sorted_array_4\"), compare(\"./134-heap_to_sorted_array_4\", \"270/1565/output_4\"), valgrind_error(\"./134-heap_to_sorted_array_4\"), valgrind_leak(\"./134-heap_to_sorted_array_4\"))",
				:files => "270/1565/main_4.c"
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
				:command => "betty_code([\"134-heap_to_sorted_array.c\", \"133-heap_extract.c\"])"
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
				:command => "betty_doc([\"134-heap_to_sorted_array.c\", \"133-heap_extract.c\"])"
			}
		]
	}
]
