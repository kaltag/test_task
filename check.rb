ingr = %w[ваниль ряженка курага]
dish = Dish.first.ingredients

if dish.include?(ingr)
  puts true
else
  puts false
end
