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
				:command => "files_exist([\"135-O\"])"
			}
		]
	},
	{
		:concept_id => 26,
		:body => "Correct values",
		:points => 3,
		:check_type => 1,
		:check_label => "Code",
		:eliminatory => false,
		:position => 10,
		:commands => [
			{
				:check_docker_image_id => 1,
				:command => "compare(\"cat 135-O\", \"270/1549/135-O\")"
			}
		]
	}
]
