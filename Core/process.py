def process(data, title):
	output = []
	padding = "    "

	output.append(generate_title(title))

	for controls in data:
		output.append(generate_tags(controls['ID']))
		output.append(generate_scenario(controls['ID'], controls['Scenario']))
		output.append(generate_when(padding, controls["Profile"], controls['Type'], controls['Category']))
		output.append(generate_then(padding, controls['Profile'], controls['Type'], controls['Key'], controls['Comparator'], controls['Value']))

	return output

def generate_title(title):
	return "Feature: %s\n" % title
def generate_tags(id):
	list_of_tags = []

	tag = id
	id_numbers = id.split(".")
	
	for index, value in enumerate(id_numbers):
		if index != 0:
			tag = '.'.join(id_numbers[:-index])

		list_of_tags.append("%s%s" % ("@", tag)) 

	return ' '.join(list_of_tags[::-1])

def generate_scenario(id, scenario):
	return "Scenario: %s %s" % (id, scenario)

def generate_when(padding, profile, type, category):
	return "%s When I get a \"%s\" %s %s" % (padding, profile, type.lower(), category.lower()) 

def generate_then(padding, profile, type, key, comparator, value):
	return "%s Then the \"%s\" %s property \"%s\" is %s to \"%s\"\n" % (padding, profile, type.lower(), key, comparator.lower(), value)