def input_students
	puts "Please enter the names of the students, their hobby and their favourite colour"
	puts "To finish, just hit return twice"
	students = []
	answer = gets.chomp
	name, hobby, colour = answer.chomp.split(" ")
	until answer.empty? do
		students << {:name => name, :hobby => hobby, :colour => colour}
		puts "Now we have #{students.length} students."
		answer = gets.chomp
		name, hobby, colour = answer.chomp.split(" ")
	end
	students
end

def print_header
	puts "The students of my cohort at Makers are:"
	puts "--------------"
end

def print_students(students)
	count = students.count - 1
	until count < 0 
		puts "#{students[count - 1][:name]} (likes #{students[count - 1][:hobby]}, favourite colour is #{students[count-1][:colour]})"
		count = count - 1
	end
end

def print_footer(names)
	"Overall, we have #{names.length} great students" 
end

students = input_students
print_header
print_students(students)
print_footer(students)