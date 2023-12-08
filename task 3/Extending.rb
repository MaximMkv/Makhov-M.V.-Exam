class Animal
    def initialize(name)
      @name = name
    end
  
    def doSound
      "Some sound"
    end
  end
  
  class Dog < Animal
    def doSound
      "Woof!"
    end
  end
  
  class Cat < Animal
    def doSound
      "Meow!"
    end
  end
  
  # Використання класів Animal, Dog та Cat
  someAnimal = Animal.new("Some animal")
  puts "#{someAnimal.instance_variable_get(:@name)} says: #{someAnimal.doSound}"
  
  dog = Dog.new("Pes")
  puts "#{dog.instance_variable_get(:@name)} says: #{dog.doSound}"
  
  cat = Cat.new("Boris")
  puts "#{cat.instance_variable_get(:@name)} says: #{cat.doSound}"
  