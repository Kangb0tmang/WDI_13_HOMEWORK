class Animals
   # self is whatever you call it in i.e. class or instance
   # self in instance variable/method is object
   # self in class variable/method is the class

   attr_reader :name, :type, :species, :age, :gender, :toys_list
   # @@animals = [] (class variable)
   def initialize(name, type, species, age, gender)
      @type = type
      @species = species
      @age = age
      @gender = gender
      @name = name
      @toys_list = []

      # @@animals.push self
   end

   def add_toys(toy)
      toys_list.push(toy)
   end

   def remove_toys(toy)
      toys_list.delete(toy)
   end

   def add_animal(name, type, species, age, gender)
      shelter_animals =
      { name =>
         {
            :name => name,
            :type => type,
            :species => species,
            :age => age,
            :gender => gender,
            :toys_list => toys_list
         }
      }
      return shelter_animals
   end

   # def Animal.add(animal)
   #    @@animals.push animal
   # end
   # def Animal.display_animals(animals) - animal array
   # def Animal.display_animals
      # @@animals.each do |animal|
      # puts (animal details...)
      # end
   # def self.find(animals, animal_name)
   # animals.each do |animal|
   #    if animal.name == animal_name
   #       return animal
   #    end
   # end
   # Animal.find(animals, 'fluffy')

   def display_animal
      puts "Type: #{type}"
      puts "Species: #{species}"
      puts "Age: #{age}"
      puts "Gender: #{gender}"
      puts "Name: #{name}"
      puts "List of toys: #{toys_list.join(", ")}"
   end
end
