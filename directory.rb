@students = []

def print_menu
	puts "1. Input the students"
	puts "2. Show the students"
	puts "9. Exit"
end

def show_students(students)
	students_by_month(students)
	print_footer(students)
end

def process(selection)
	case selection
	when "1"
		input_students
	when "2"
		show_students(@students)
	when "9"
		exit
	else 
		puts "I don't know what you mean, try again"
	end
end

def interactive_menu
	loop do
		print_menu
		process(gets.chomp)
	end
end

def input_students
	puts "Please enter the names of the students and their cohort"
	puts "To finish, just hit return twice"
	answer = gets.chomp.downcase
	name, cohort = answer.split(" ")
	until answer.empty? do
		@students << {:name => name, :cohort => cohort}
		correct_month(@students)
		print "Now we have #{@students.length} student"
		pluralise(@students)
		answer = gets.chomp.downcase
		name, cohort = answer.split(" ")
	end
end

def pluralise(students)
	puts "s" if @students.length != 1
end

def correct_month(students)
	@students.each do |student|
		cohort = student[:cohort]
		unless ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"].include?(cohort)    
  	 		student[:cohort] = "Unknown"
  		end
  	end
end

def students_by_month(students)
	cohorts = @students.map {|student| student[:cohort]}.uniq
	cohorts.each do |cohort|
		puts "#{cohort} cohort:".capitalize.center(52)
		puts "--------------".center(50)
		print_students students.select {|student| student[:cohort] == cohort}
	end
end

def print_header(students)
	if @students.length == 0
		puts "You didn't enter any students."
	else
		puts "The students of Makers are:"
		puts "--------------".center(50)
	end
end

def print_students(students)
	students.each do |students|
		print "#{students[:name]}".capitalize.center(25)
		puts "(#{students[:cohort].capitalize})".center(25)
	end
end

def print_footer(students)
	"Overall, we have #{@students.length} great students" 
end

interactive_menu