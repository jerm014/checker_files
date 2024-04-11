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
				:command => "files_exist([\"113-bst_search.c\"])"
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
				:command => "gcc([\"113-bst_search.c\", \"270/binary_tree_print.c\", \"270/helpers/_array_to_bst.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_bst_insert.c\", \"270/helpers/_bst_search.c\", \"270/1502/main_0.c\"], \"113-bst_search_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Search an existing node in tree of max height 4",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./113-bst_search_0\", \"270/1502/output_0\"), valgrind_error(\"./113-bst_search_0\"))",
				:files => "270/1502/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Search an existing node in tree of max height 4",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"113-bst_search.c\", \"270/binary_tree_print.c\", \"270/helpers/_array_to_bst.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_bst_insert.c\", \"270/helpers/_bst_search.c\", \"270/1502/main_1.c\"], \"113-bst_search_1\"), compare(\"./113-bst_search_1\", \"270/1502/output_1\"), valgrind_error(\"./113-bst_search_1\"))",
				:files => "270/1502/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Search an existing node in tree of max height 4",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"113-bst_search.c\", \"270/binary_tree_print.c\", \"270/helpers/_array_to_bst.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_bst_insert.c\", \"270/helpers/_bst_search.c\", \"270/1502/main_2.c\"], \"113-bst_search_2\"), compare(\"./113-bst_search_2\", \"270/1502/output_2\"), valgrind_error(\"./113-bst_search_2\"))",
				:files => "270/1502/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Search a value not in a tree of max height 4",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"113-bst_search.c\", \"270/binary_tree_print.c\", \"270/helpers/_array_to_bst.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_bst_insert.c\", \"270/helpers/_bst_search.c\", \"270/1502/main_3.c\"], \"113-bst_search_3\"), compare(\"./113-bst_search_3\", \"270/1502/output_3\"), valgrind_error(\"./113-bst_search_3\"))",
				:files => "270/1502/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `bst_search(NULL, 12);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"113-bst_search.c\", \"270/helpers/_array_to_bst.c\", \"270/helpers/_binary_tree_delete.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_bst_insert.c\", \"270/helpers/_bst_search.c\", \"270/binary_tree_print.c\", \"270/1502/main_4.c\"], \"113-bst_search_4\"), compare(\"./113-bst_search_4\", \"270/1502/output_4\"), valgrind_error(\"./113-bst_search_4\"))",
				:files => "270/1502/main_4.c"
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
				:command => "betty_code([\"113-bst_search.c\"])"
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
				:command => "betty_doc([\"113-bst_search.c\"])"
			}
		]
	}
]
