# Абстрактний обробник
class AbstHandler
    attr_reader :successor
  
    def initialize(successor = nil)
      @successor = successor
    end
  
    def handle_request(request)
      if successor
        successor.handle_request(request)
      else
        puts "Запит не оброблено"
      end
    end
end
  

# Наслідується від AbstHandler
  class Handler1 <AbstHandler
    def handle_request(request)
      if request == 100
        puts "handler1 обробляє запит"
      else
        super(request)
      end
    end
  end
  

# Наслідується від AbstHandler
  class Handler2 <AbstHandler
    def handle_request(request)
      if request == 300
        puts "handler2 обробляє запит"
      else
        super(request)
      end
    end
  end
  

  handler1 = Handler1.new
  handler2 = Handler2.new(handler1)
  
  handler2.handle_request(100) # оброблено
  handler2.handle_request(200) # не оброблено
  handler2.handle_request(300) # оброблено

  