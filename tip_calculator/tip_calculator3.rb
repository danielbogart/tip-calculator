puts "What is the cost of your meal?"
user_meal = gets.chomp

puts "What's the tax rate yo?"
user_tax = gets.chomp

puts "How many percents you wanna tip?"
user_tip = gets.chomp

def tax_and_tip(base, rate)
	return base * (rate/100)
end

tax_value = tax_and_tip(Float(user_meal), Float(user_tax))
meal_with_tax = (Float(user_meal) + tax_value)
tip_value = tax_and_tip((meal_with_tax), Float(user_tip))
total_cost = meal_with_tax + tip_value

puts "The pre-tax cost of your meal was $#{sprintf("%.2f", Float(user_meal))}."
puts "At #{Float(user_tax)}% tax, tax for this meal costs $#{sprintf("%.2f", tax_value)}."
puts "For a #{Float(user_tip)}% tip, you should leave $#{sprintf("%.2f", tip_value)}."
puts "The grand total for this meal is then $#{sprintf("%.2f", total_cost)}."