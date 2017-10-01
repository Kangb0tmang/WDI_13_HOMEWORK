require 'pry'
require_relative 'animals.rb'
require_relative 'clients.rb'

# shelter = {
#    :clients =>
#    [
#       {
#          :name => 'Gru',
#          :children => 100,
#          :age => 40,
#          :pets_list => ['Ian', 'Bob', 'Dave'],
#       },
#       {
#          :name => 'Wilson',
#          :children => 2,
#          :age => 35,
#          :pets_list => ['Dragon', 'Daisy', 'Darcy'],
#       },
#    ],
#    :animals =>
#    [
#       'Pandora' =>
#       {
#          :name => 'Pandora',
#          :type => 'dog',
#          :species => 'kelpie-cross',
#          :age => 5,
#          :gender => 'female',
#          :toys_list => ['kermit', 'elmo', 'stripey towel'],
#       },
#       'Pebbles' =>
#       {
#          :type => 'cat',
#          :species => 'tabby',
#          :age => 'unknown',
#          :gender => 'unknown',
#          :name => 'Pebbles',
#          :toys_list => ['the ground', 'leaves', 'plants'],
#       },
#       'Toe Beans' =>
#       {
#          :name => 'Pandora',
#          :type => 'dog',
#          :species => 'kelpie-cross',
#          :age => 5,
#          :gender => 'female',
#          :toys_list => ['kermit', 'elmo', 'stripey towel'],
#       },
#       'Fluffles' =>
#       {
#          :type => 'cat',
#          :species => 'tabby',
#          :age => 'unknown',
#          :gender => 'unknown',
#          :name => 'Pebbles',
#          :toys_list => ['the ground', 'leaves', 'plants'],
#       },
#    ]
# }

shelter[:clients].each do |client|
   puts client[:name]
end

# client_list = []
# shelter["clients"].each do |key, value|
#    client_list << value
# end
#
# client_list.each do |client|
#    puts client[:name]
# end

# gru = Clients.new('Gru', 100, 40)
# gru.current_pets('Minion Papoy')
# gru.current_pets('Minion Dave')
# gru.current_pets('Minion Bob')
# shelter_clients = gru.add_client(gru.name, gru.children, gru.age)
# gru.display_client

# john = Clients.new('John', 0, 35)
# john.current_pets('Garfield')
# john.current_pets('Odie')
# john.current_pets('Nermal')
# john.current_pets('Arlene')
# shelter_clients = john.add_client(john.name, john.children, john.age)
# john.display_client

# def create_client
#    shelter_clients["John"] = "John" =>
# end
# create_client
# loaf = Animals.new('dog', 'corgi', 1, 'female', 'Loaf')
# loaf.add_toys('bone')
# loaf.add_toys('socks')
# loaf.add_toys('stripey towel')
# loaf.add_toys('grass')
# shelter_animals = loaf.add_animal(loaf.type, loaf.species, loaf.age, loaf.gender, loaf.name)
# loaf.display_animal

# pebbles = Animals.new('cat', 'tuxedo', 'unknown', 'unknown', 'Pebbles')
# pebbles.add_toys('grass')
# pebbles.add_toys('pavement')
# pebbles.add_toys('bitumen')
# pebbles.add_toys('human hands')
# shelter_animals = pebbles.add_animal(pebbles.type, pebbles.species, pebbles.age, pebbles.gender, pebbles.name)
# pebbles.display_animal

# def create_animal(type, breed, age, gender)
#
# end
# create_animal(type, breed, age, gender
# def adopt_animal(name, client)
#    animal_obj = animal_shelter[name]
#    animal_shelter.delete(name)
#    client.adopt(animal_obj)
# end

# name = gets.chomp
# adopt_animal(animal_name, client_name)

binding.pry
