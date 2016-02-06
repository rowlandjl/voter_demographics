voter_demographics = [
  {
    first_name: "John",
    last_name: "Smith",
    age: 25,
    income: 50000,
    household_size: 1,
    gender: "male",
    education: "college"
  },
  {
    first_name: "Jane",
    last_name: "Davies",
    age: 30,
    income: 60000,
    household_size: 3,
    gender: "female",
    education: "high school"
  },
  {
    first_name: "Sam",
    last_name: "Farelly",
    age: 32,
    income: 80000,
    household_size: 2,
    gender: "unspecified",
    education: "college"
  },
  {
    first_name: "Joan",
    last_name: "Favreau",
    age: 35,
    income: 65000,
    household_size: 4,
    gender: "female",
    education: "college"
  },
  {
    first_name: "Sam",
    last_name: "McNulty",
    age: 38,
    income: 63000,
    household_size: 3,
    gender: "male",
    education: "college"
  },
  {
    first_name: "Mark",
    last_name: "Minahan",
    age: 48,
    income: 78000,
    household_size: 5,
    gender: "male",
    education: "high school"
  },
  {
    first_name: "Susan",
    last_name: "Umani",
    age: 45,
    income: 75000,
    household_size: 2,
    gender: "female",
    education: "college"
  },
  {
    first_name: "Bill",
    last_name: "Perault",
    age: 24,
    income: 45000,
    household_size: 1,
    gender: "male",
    education: "did not complete high school"
  },
  {
    first_name: "Doug",
    last_name: "Stamper",
    age: 45,
    income: 75000,
    household_size: 1,
    gender: "male",
    education: "college"
  },
  {
    first_name: "Francis",
    last_name: "Underwood",
    age: 52,
    income: 100000,
    household_size: 2,
    gender: "male",
    education: "college"
  }
]
counter = 0
average_age = 0.00
average_income = 0.00
average_household = 0.0
avg_female = 0.00
avg_male = 0.0
avg_unspecified = 0.0
avg_college = 0.0
avg_high_school = 0.0
avg_no_high_school = 0.0

voter_demographics.each do |voters|
  counter += 1
  average_age += voters[:age]
  average_income += voters[:income]
  average_household += voters[:household_size]

  if voters[:gender] == "female"
    avg_female += 1
  elsif voters[:gender] == "male"
    avg_male += 1
  else
    avg_unspecified += 1
  end

  if voters[:education] == "college"
    avg_college += 1
  elsif voters[:education] == "high school"
    avg_high_school += 1
  else
    avg_no_high_school += 1
  end
end


puts "Average Age: #{average_age / counter}"
puts "Average Income: #{average_income / counter}"
puts "Average Household Size: #{average_household / counter}"
puts "Female %: #{(avg_female / counter) * 100}"
puts "Male %: #{(avg_male / counter) * 100}"
puts "Unspecified Gender %: #{(avg_unspecified / counter) * 100}"
puts "College %: #{(avg_college / counter) * 100}"
puts "High School %: #{(avg_high_school / counter) * 100}"
puts "Did Not Finish High School %: #{(avg_no_high_school / counter) * 100}"
