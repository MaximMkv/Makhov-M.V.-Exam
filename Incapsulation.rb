class BankAccount
    def initialize(balance, pin)
      @balance = balance
      @pin = pin
    end
  
    def withdraw(amount, entered_pin)
      if valid_pin?(entered_pin)
        if amount > 0 && amount <= @balance
          @balance -= amount
          puts "Withdrawal successful. New balance: #{@balance}"
        else
          puts "Invalid withdrawal amount"
        end
      else
        puts "Invalid PIN"
      end
    end
  
    def show_balance
      puts "Current balance: #{@balance}"
    end
  
    # Метод valid_pin? є приватним і недоступним ззовні класу
    private
    def valid_pin?(entered_pin)
      entered_pin == @pin
    end
  end
  

  account = BankAccount.new(1000, 1234)
  
  # Оця спроба викличе помилку
  # account.valid_pin?(5678) 
  
  account.withdraw(200, 1234)  # Withdrawal successful. New balance: 800
  account.show_balance  # Current balance: 800
  