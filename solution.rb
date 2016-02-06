voters = [
  {
    first_name: 'Jon',
    last_name: 'Smith',
    age: 25,
    income: 50000,
    household_size: 1,
    gender: 'Male',
    education: 'College'
  },
  {
    first_name: 'Jane',
    last_name: 'Davies',
    age: 30,
    income: 60000,
    household_size: 3,
    gender: 'Female',
    education: 'High School'
  },
  {
    first_name: 'Sam',
    last_name: 'Farelly',
    age: 32,
    income: 80000,
    household_size: 2,
    gender: 'Unspecified',
    education: 'College'
  },
  {
    first_name: 'Joan',
    last_name: 'Favreau',
    age: 35,
    income: 65000,
    household_size: 4,
    gender: 'Female',
    education: 'College'
  },
  {
    first_name: 'Sam',
    last_name: 'McNulty',
    age: 38,
    income: 63000,
    household_size: 3,
    gender: 'Male',
    education: 'College'
  },
  {
    first_name: 'Mark',
    last_name: 'Minahan',
    age: 48,
    income: 78000,
    household_size: 5,
    gender: 'Male',
    education: 'High School'
  },
  {
    first_name: 'Susan',
    last_name: 'Umani',
    age: 45,
    income: 75000,
    household_size: 2,
    gender: 'Female',
    education: 'College'
  },
  {
    first_name: 'Bill',
    last_name: 'Perault',
    age: 24,
    income: 45000,
    household_size: 1,
    gender: 'Male',
    education: 'Did Not Complete High School'
  },
  {
    first_name: 'Doug',
    last_name: 'Stamper',
    age: 45,
    income: 75000,
    household_size: 1,
    gender: 'Male',
    education: 'College'
  },
  {
    first_name: 'Francis',
    last_name: 'Underwood',
    age: 52,
    income: 100000,
    household_size: 2,
    gender: 'Male',
    education: 'College'
  },
]

age_sum = 0
income_sum = 0
household_size_sum = 0
male_count = 0
female_count = 0
unspecified_gender_count = 0
college_count = 0
high_school_count = 0
no_high_school_count = 0

voters.each do |voter|
  age_sum += voter[:age]
  income_sum += voter[:income]
  household_size_sum += voter[:household_size]

  if voter[:gender] == 'Male'
    male_count += 1
  elsif voter[:gender] == 'Female'
    female_count += 1
  else
    unspecified_gender_count += 1
  end

  if voter[:education] == 'College'
    college_count += 1
  elsif voter[:education] == 'High School'
    high_school_count += 1
  else
    no_high_school_count += 1
  end
end

puts "Average Age: #{(age_sum / voters.size.to_f)}"
puts "Average Income: #{(income_sum / voters.size.to_f)}"
puts "Average Household Size: #{(household_size_sum / voters.size.to_f)}"

female_pct = (female_count / voters.size.to_f) * 100
puts "Female %: #{female_pct}"

male_pct = (male_count / voters.size.to_f) * 100
puts "Male %: #{male_pct}"

unspecified_gender_pct = (unspecified_gender_count / voters.size.to_f) * 100
puts "Unspecified Gender %: #{unspecified_gender_pct}"

puts "College %: #{(college_count / voters.size.to_f) * 100}"
puts "High School %: #{(high_school_count / voters.size.to_f) * 100}"
puts "Did Not Finish High School %: #{(no_high_school_count / voters.size.to_f) * 100}"
