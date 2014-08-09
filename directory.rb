def input_students
	puts "Please enter the names of the students and their cohort"
	puts "To finish, just hit return twice"
	students = []
	answer = gets.chomp.downcase
	name, cohort = answer.chomp.split(" ")
	until answer.empty? do
		students << {:name => name, :cohort => cohort}
		puts "Now we have #{students.length} students."
		answer = gets.chomp.downcase
		name, cohort = answer.chomp.split(" ")
	end
	students
	missing_answer(students)
end

def missing_answer(students)
	students.each do|student|
		if student[:cohort] == nil
  	 	 student[:cohort] = "missing"
  		end
  	end
end

def print_header
	puts "The students of my cohort at Makers are:"
	puts "--------------".center(50)
end

def print_students(students)
	count = students.count - 1
	until count < 0 
		print "#{students[count - 1][:name]}".center(25)
		puts "(#{students[count - 1][:cohort].to_sym})".center(25)
		count = count - 1
	end
end

def print_footer(students)
	"Overall, we have #{students.length} great students" 
end

students = input_students
print_header
print_students(students)
print_footer(students)