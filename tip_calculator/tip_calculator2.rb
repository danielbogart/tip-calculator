puts "What is the cost of your meal?"
user_meal = gets.chomp

puts "What's the tax rate yo?"
user_tax = gets.chomp

puts "How many percents you wanna tip?"
user_tip = gets.chomp

meal = Float(user_meal)
tax_percent = Float(user_tax)
tip_percent = Float(user_tip)

tax_value = meal * tax_percent/100
meal_with_tax = (meal + tax_value)
tip_value = meal_with_tax * tip_percent/100
total_cost = meal_with_tax + tip_value

puts "The pre-tax cost of your meal was $#{sprintf("%.2f", meal)}."
puts "At #{tax_percent}% tax, tax for this meal costs $#{sprintf("%.2f", tax_value)}."
puts "For a #{tip_percent}% tip, you should leave $#{sprintf("%.2f", tip_value)}."
puts "The grand total for this meal is then $#{sprintf("%.2f", total_cost)}."