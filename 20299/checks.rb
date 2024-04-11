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
				:command => "files_exist([\"4-binary_tree_is_leaf.c\"])"
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
				:command => "gcc([\"4-binary_tree_is_leaf.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1471/main_0.c\"], \"4-binary_tree_is_leaf_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Root node without any children",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./4-binary_tree_is_leaf_0\", \"270/1471/output_0\"), valgrind_error(\"./4-binary_tree_is_leaf_0\"), valgrind_leak(\"./4-binary_tree_is_leaf_0\"))",
				:files => "270/1471/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Root node with one right child",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"4-binary_tree_is_leaf.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1471/main_1.c\"], \"4-binary_tree_is_leaf_1\"), compare(\"./4-binary_tree_is_leaf_1\", \"270/1471/output_1\"), valgrind_error(\"./4-binary_tree_is_leaf_1\"), valgrind_leak(\"./4-binary_tree_is_leaf_1\"))",
				:files => "270/1471/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Root node with one left child",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"4-binary_tree_is_leaf.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1471/main_2.c\"], \"4-binary_tree_is_leaf_2\"), compare(\"./4-binary_tree_is_leaf_2\", \"270/1471/output_2\"), valgrind_error(\"./4-binary_tree_is_leaf_2\"), valgrind_leak(\"./4-binary_tree_is_leaf_2\"))",
				:files => "270/1471/main_2.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Root node with one right child and one left child",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 13,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"4-binary_tree_is_leaf.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1471/main_3.c\"], \"4-binary_tree_is_leaf_3\"), compare(\"./4-binary_tree_is_leaf_3\", \"270/1471/output_3\"), valgrind_error(\"./4-binary_tree_is_leaf_3\"), valgrind_leak(\"./4-binary_tree_is_leaf_3\"))",
				:files => "270/1471/main_3.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: `binary_tree_is_leaf(NULL);`",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 14,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"4-binary_tree_is_leaf.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_node.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1471/main_4.c\"], \"4-binary_tree_is_leaf_4\"), compare(\"./4-binary_tree_is_leaf_4\", \"270/1471/output_4\"), valgrind_error(\"./4-binary_tree_is_leaf_4\"), valgrind_leak(\"./4-binary_tree_is_leaf_4\"))",
				:files => "270/1471/main_4.c"
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
				:command => "betty_code([\"4-binary_tree_is_leaf.c\"])"
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
				:command => "betty_doc([\"4-binary_tree_is_leaf.c\"])"
			}
		]
	}
]
