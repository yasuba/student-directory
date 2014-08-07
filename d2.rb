def input_students
	print "Please enter the names of the students\n"
	print "To finish, just hit return twice\n"
	students = []
	name = gets.chomp
	while !name.empty? do
		students << {:name => name, :cohort => :august}
		puts "Now we have #{students.length} students."
		name = gets.chomp
	end
	students
end

def print_header
	puts "The students of my cohort at Makers are:"
	puts "--------------"
end

def print_students(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	"Overall, we have #{names.length} great students" 
end

students = input_students
print_header
print_students(students)
print_footer(students)
