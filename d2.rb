students = [
"student1",
"student2",
"student3",
"student4",
"student5",
"student6",
"student7",
]

def print_header
	puts "The students of my cohort at Makers are:"
	puts "--------------"
end

def print(names)
names.each do |student|
	puts student
end
end

def print_footer(names)
"Overall, we have #{names.length} great students" 
end

print_header
print(students)
print_footer(students)
