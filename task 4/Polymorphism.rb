class Cat
    def doSound
      "Meow!"
    end
  end
  
  class Dog
    def doSound
      "Woof!"
    end
  end
  
  class Cow
    def doSound
      "Moo!"
    end
  end
  
  def makeSomeSound(animal)
    animal.doSound
  end
  
  # Використання методу makeSomeSound для об'єктів різних класів
  cat = Cat.new
  dog = Dog.new
  cow = Cow.new
  
  puts makeSomeSound(cat)  # Output: Meow!
  puts makeSomeSound(dog)  # Output: Woof!
  puts makeSomeSound(cow)  # Output: Moo!
  