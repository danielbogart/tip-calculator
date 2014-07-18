meal = 20.00
tax_percent = 12
tip_percent = 20

tax_value = meal * tax_percent/100
meal_with_tax = (meal + tax_value)
tip_value = meal_with_tax * tip_percent/100
total_cost = meal_with_tax + tip_value

puts "The pre-tax cost of your meal was $#{sprintf("%.2f", meal)}."
puts "At #{tax_percent}% tax, tax for this meal costs $#{sprintf("%.2f", tax_value)}."
puts "For a #{tip_percent}% tip, you should leave $#{sprintf("%.2f", tip_value)}."
puts "The grand total for this meal is then $#{sprintf("%.2f", total_cost)}."

