#Локальна змінна
def example_method
    local_variable = 42
    puts local_variable
 end



#Глобальна змінна
 $global_variable = 10

def print_global_variable
  puts $global_variable
end



#Інстанс-змінн
class MyClass
    def initialize(value)
      @instance_variable = value
    end
  
    def print_instance_variable
      puts @instance_variable
    end
  end



#Змінна класу 
class MyClass
    @@class_variable = 20
    
    def self.print_class_variable
      puts @@class_variable
    end
end



# Константа
MY_CONSTANT = 100

def print_const
    MY_CONSTANT
end





