def input_students
	puts "Please enter the names of the students and their cohort"
	puts "To finish, just hit return twice"
	students = []
	answer = gets.downcase.gsub(/\n/," ")
	name, cohort = answer.split(" ")
	until answer.empty? do
		students << {:name => name, :cohort => cohort}
		correct_month(students)
		print "Now we have #{students.length} student"
		pluralise(students)
		answer = gets.downcase.gsub(/\n/," ")
		name, cohort = answer.split(" ")
	end
	students
end

def pluralise(students)
	puts "s" if students.length != 1
end

def correct_month(students)
	students.each do |student|
		cohort = student[:cohort]
		unless ["january", "february", "march", "april", "may", "june", "july", "august", "september", "october", "november", "december"].include?(cohort)    
  	 		student[:cohort] = "Unknown"
  		end
  	end
end

def students_by_month(students)
	cohorts = students.map {|student| student[:cohort]}.uniq
	cohorts.each do |cohort|
		puts "#{cohort} cohort:".capitalize.center(52)
		puts "--------------".center(50)
		print_students students.select {|student| student[:cohort] == cohort}
	end
end

def print_header
	puts "The students of Makers are:"
	puts "--------------".center(50)
end

def print_students(students)
	students.each do |students|
		print "#{students[:name]}".capitalize.center(25)
		puts "(#{students[:cohort].capitalize})".center(25)
	end
end

def print_footer(students)
	"Overall, we have #{students.length} great students" 
end

students = input_students
print_header
students_by_month(students)
print_footer(students)