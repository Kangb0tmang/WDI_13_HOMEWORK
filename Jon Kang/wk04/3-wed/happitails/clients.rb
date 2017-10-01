class Clients
   attr_reader :name, :children, :age, :pets_list

   def initialize(name, children, age)
      @name = name
      @children = children
      @age = age
      @pets_list = []
   end

   def current_pets(animal)
      pets_list.push(animal)
   end

   def add_client(name, children, age)
      shelter_clients =
      [
         name =>
         {
            :name => name,
            :children => children,
            :age => age,
            :pets_list => pets_list
         }
      ]
      return shelter_clients
   end

   def display_client
      puts "Name: #{name}"
      puts "Number of children: #{children}"
      puts "Age: #{age}"
      puts "Current pets: #{pets_list.join(", ")}"
   end
end
