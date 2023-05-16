require 'pry'

# This method returns an array of hashes, which we'll use in the other methods
def spicy_foods
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end
    ## Given an array of spicy foods, return an array of strings with the names of each spicy food
def get_names(spicy_foods)
  spicy_foods.map { |food| food[:name] }
end

def spiciest_foods(spicy_foods)
  spicy_foods.select { |food| food[:heat_level] > 5 }
end
 
   # Given an array of spicy foods, output to the terminal each spicy food in the specified format
def print_spicy_foods(spicy_foods)
  spicy_foods.each do |food|
    heat_level = '🌶' * food[:heat_level]
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{heat_level}"
  end
end

def get_spicy_food_by_cuisine(spicy_foods, cuisine)
  spicy_foods.find { |food| food[:cuisine] == cuisine }
end

def sort_by_heat(spicy_foods)
  spicy_foods.sort_by { |food| food[:heat_level] }
end

def print_spiciest_foods(spicy_foods)
  spiciest_foods = spiciest_foods(spicy_foods)
  print_spicy_foods(spiciest_foods)
end

def average_heat_level(spicy_foods)
  return 0 if spicy_foods.empty?

  total_heat_level = spicy_foods.sum { |food| food[:heat_level] }
  total_heat_level / spicy_foods.length
end
