class Rectangle
    attr_accessor :width, :height
  
    def initialize(width, height)
      @width = width
      @height = height
    end
  
    def area
      width * height
    end
  end
  
  class Square < Rectangle
    def initialize(side)
      # Конструктор Square викликає конструктор Rectangle і передає однакові значення для ширини та висоти
      super(side, side)
    end
  
    # Перевизначення методу width= та height= для забезпечення однакових значень у квадрата
    def width=(value)
      @width = value
      @height = value
    end
  
    def height=(value)
      @height = value
      @width = value
    end
  end
  

  # Функція, яка приймає об'єкти базового класу
  def print_area(rectangle)
    puts "Area: #{rectangle.area}"
  end
  

  rectangle = Rectangle.new(4, 5)
  square = Square.new(4)
  
    # Використання базового класу Rectangle
  print_area(rectangle)
  
  # Використання підкласу Square замість базового класу Rectangle
  print_area(square)
  