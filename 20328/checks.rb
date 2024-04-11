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
				:command => "files_exist([\"133-heap_extract.c\"])"
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
				:command => "gcc([\"133-heap_extract.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_heap_insert.c\", \"270/helpers/_array_to_heap.c\", \"270/1548/main_0.c\"], \"133-heap_extract_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Extract 1 value",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./133-heap_extract_0\", \"270/1548/output_0\"), valgrind_error(\"./133-heap_extract_0\"), valgrind_leak(\"./133-heap_extract_0\"))",
				:files => "270/1548/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Extract 2 value",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"133-heap_extract.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_heap_insert.c\", \"270/helpers/_array_to_heap.c\", \"270/1548/main_1.c\"], \"133-heap_extract_1\"), compare(\"./133-heap_extract_1\", \"270/1548/output_1\"), valgrind_error(\"./133-heap_extract_1\"), valgrind_leak(\"./133-heap_extract_1\"))",
				:files => "270/1548/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Extract 4 value",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"133-heap_extract.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_heap_insert.c\", \"270/helpers/_array_to_heap.c\", \"270/1548/main_2.c\"], \"133-heap_extract_2\"), compare(\"./133-heap_extract_2\", \"270/1548/output_2\"), valgrind_error(\"./133-heap_extract_2\"), valgrind_leak(\"./133-heap_extract_2\"))",
				:files => "270/1548/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Extract all the values",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"133-heap_extract.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_heap_insert.c\", \"270/helpers/_array_to_heap.c\", \"270/1548/main_3.c\"], \"133-heap_extract_3\"), compare(\"./133-heap_extract_3\", \"270/1548/output_3\"), valgrind_error(\"./133-heap_extract_3\"), valgrind_leak(\"./133-heap_extract_3\"))",
				:files => "270/1548/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `heap_extract(&root);`, `root` being `NULL`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"133-heap_extract.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_heap_insert.c\", \"270/helpers/_array_to_heap.c\", \"270/1548/main_4.c\"], \"133-heap_extract_4\"), compare(\"./133-heap_extract_4\", \"270/1548/output_4\"), valgrind_error(\"./133-heap_extract_4\"), valgrind_leak(\"./133-heap_extract_4\"))",
				:files => "270/1548/main_4.c"
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
				:command => "betty_code([\"133-heap_extract.c\"])"
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
				:command => "betty_doc([\"133-heap_extract.c\"])"
			}
		]
	}
]
