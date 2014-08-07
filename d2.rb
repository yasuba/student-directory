students = [
{:name => "student1", :cohort => :august},
{:name => "student2", :cohort => :august},
{:name => "student3", :cohort => :august},
{:name => "student4", :cohort => :august},
{:name => "student5", :cohort => :august},
{:name => "student6", :cohort => :august},
{:name => "student7", :cohort => :august},
]

def print_header
	puts "The students of my cohort at Makers are:"
	puts "--------------"
end

def print(students)
	students.each do |student|
		puts "#{student[:name]} (#{student[:cohort]} cohort)"
	end
end

def print_footer(names)
	"Overall, we have #{names.length} great students" 
end

print_header
print(students)
print_footer(students)
