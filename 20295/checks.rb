@checks = [
	{
		:concept_id => 26,
		:body => "README is present and not empty",
		:points => 0,
		:check_type => 1,
		:check_label => "Requirement",
		:eliminatory => true,
		:position => 1,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(files_exist([\"README.md\"]), !files_empty([\"README.md\"]))"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "File is present",
		:points => 0,
		:check_type => 1,
		:check_label => "Requirement",
		:eliminatory => true,
		:position => 2,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "files_exist([\"0-binary_tree_node.c\"])"
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
		:position => 3,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "gcc([\"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1445/main_0.c\"], \"0-binary_tree_node_0\")"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Creates a single node",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(compare(\"./0-binary_tree_node_0\", \"270/1445/output_0\"), valgrind_error(\"./0-binary_tree_node_0\"), valgrind_leak(\"./0-binary_tree_node_0\"))",
				:files => "270/1445/main_0.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Creates a node plus its left and right children",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 11,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1445/main_1.c\"], \"0-binary_tree_node_1\"), compare(\"./0-binary_tree_node_1\", \"270/1445/output_1\"), valgrind_error(\"./0-binary_tree_node_1\"), valgrind_leak(\"./0-binary_tree_node_1\"))",
				:files => "270/1445/main_1.c"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct output - case: Creates a node, its left and right children, plus the left and right children of the previous left and right",
		:points => 1,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 12,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "op_and(gcc([\"0-binary_tree_node.c\", \"270/binary_tree_print.c\", \"270/helpers/_binary_tree_delete.c\", \"270/1445/main_2.c\"], \"0-binary_tree_node_2\"), compare(\"./0-binary_tree_node_2\", \"270/1445/output_2\"), valgrind_error(\"./0-binary_tree_node_2\"), valgrind_leak(\"./0-binary_tree_node_2\"))",
				:files => "270/1445/main_2.c"
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
				:command => "malloc(\"./0-binary_tree_node_0\", \"c/malloc/libfake_malloc.so\")"
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
				:command => "betty_code([\"0-binary_tree_node.c\"])"
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
				:command => "betty_doc([\"0-binary_tree_node.c\"])"
			}
		]
	}
]
