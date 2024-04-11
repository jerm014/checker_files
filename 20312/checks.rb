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
				:command => "files_exist([\"100-binary_trees_ancestor.c\"])"
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
				:command => "gcc([\"100-binary_trees_ancestor.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1485/main_0.c\"], \"100-binary_trees_ancestor_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Two times the same node",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./100-binary_trees_ancestor_0\", \"270/1485/output_0\"), valgrind_error(\"./100-binary_trees_ancestor_0\"), valgrind_leak(\"./100-binary_trees_ancestor_0\"))",
				:files => "270/1485/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: One of the two nodes is the lowest common ancestor",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"100-binary_trees_ancestor.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1485/main_1.c\"], \"100-binary_trees_ancestor_1\"), compare(\"./100-binary_trees_ancestor_1\", \"270/1485/output_1\"), valgrind_error(\"./100-binary_trees_ancestor_1\"), valgrind_leak(\"./100-binary_trees_ancestor_1\"))",
				:files => "270/1485/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: One of the two nodes is the lowest common ancestor (mirror)",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"100-binary_trees_ancestor.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1485/main_2.c\"], \"100-binary_trees_ancestor_2\"), compare(\"./100-binary_trees_ancestor_2\", \"270/1485/output_2\"), valgrind_error(\"./100-binary_trees_ancestor_2\"), valgrind_leak(\"./100-binary_trees_ancestor_2\"))",
				:files => "270/1485/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Most left child and most right child",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"100-binary_trees_ancestor.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1485/main_3.c\"], \"100-binary_trees_ancestor_3\"), compare(\"./100-binary_trees_ancestor_3\", \"270/1485/output_3\"), valgrind_error(\"./100-binary_trees_ancestor_3\"), valgrind_leak(\"./100-binary_trees_ancestor_3\"))",
				:files => "270/1485/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Most right child of left and most left child of right",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"100-binary_trees_ancestor.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1485/main_4.c\"], \"100-binary_trees_ancestor_4\"), compare(\"./100-binary_trees_ancestor_4\", \"270/1485/output_4\"), valgrind_error(\"./100-binary_trees_ancestor_4\"), valgrind_leak(\"./100-binary_trees_ancestor_4\"))",
				:files => "270/1485/main_4.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Two nodes not in the same tree",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 15,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"100-binary_trees_ancestor.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1485/main_5.c\"], \"100-binary_trees_ancestor_5\"), compare(\"./100-binary_trees_ancestor_5\", \"270/1485/output_5\"), valgrind_error(\"./100-binary_trees_ancestor_5\"), valgrind_leak(\"./100-binary_trees_ancestor_5\"))",
				:files => "270/1485/main_5.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_trees_ancestor(first, NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 16,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"100-binary_trees_ancestor.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1485/main_6.c\"], \"100-binary_trees_ancestor_6\"), compare(\"./100-binary_trees_ancestor_6\", \"270/1485/output_6\"), valgrind_error(\"./100-binary_trees_ancestor_6\"), valgrind_leak(\"./100-binary_trees_ancestor_6\"))",
				:files => "270/1485/main_6.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_trees_ancestor(NULL, second);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 17,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"100-binary_trees_ancestor.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1485/main_7.c\"], \"100-binary_trees_ancestor_7\"), compare(\"./100-binary_trees_ancestor_7\", \"270/1485/output_7\"), valgrind_error(\"./100-binary_trees_ancestor_7\"), valgrind_leak(\"./100-binary_trees_ancestor_7\"))",
				:files => "270/1485/main_7.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_trees_ancestor(NULL, NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 18,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"100-binary_trees_ancestor.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1485/main_8.c\"], \"100-binary_trees_ancestor_8\"), compare(\"./100-binary_trees_ancestor_8\", \"270/1485/output_8\"), valgrind_error(\"./100-binary_trees_ancestor_8\"), valgrind_leak(\"./100-binary_trees_ancestor_8\"))",
				:files => "270/1485/main_8.c"
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
				:command => "betty_code([\"100-binary_trees_ancestor.c\"])"
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
				:command => "betty_doc([\"100-binary_trees_ancestor.c\"])"
			}
		]
	}
]
