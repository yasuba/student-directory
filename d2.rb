def input_students
	puts "Please enter the names of the students"
	puts "To finish, just hit return twice"
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
	students.each_with_index do |student, index|
	puts "#{index} #{student[:name]} (#{student[:cohort]} cohort)" if student[:name].start_with?("a")		
	end
end

def print_footer(names)
	"Overall, we have #{names.length} great students" 
end

students = input_students
print_header
print_students(students)
print_footer(students)
