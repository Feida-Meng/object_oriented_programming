 #
# Create a BankAccount class
# Every bank account should have balance and interest_rate attributes
# At this point you should test out creating an instance of your class to make sure it works
# Your class should have an instance method called deposit that accepts one amount argument and adds that amount to the total balance
# Test out your method by calling it on an instance of your class
# There should be a withdraw instance method that accepts one amount argument and subtracts it from the total balance
# Don't forget to test it out!
# Finally, there should be a gain_interest instance method that increases the total balance according to the interest rate.
class BankAccount



  def initialize()

    @balance = 0.00
    @last_deposit = 0.00
    @last_withdraw = 0.00
    @password = 123456
    @interest_rate = 0.01


  end

  def deposit

    m = 0
    while m < 3
      puts "How much would you like to deposit?"
      input = gets
      if input.to_f.is_a? Numeric
        @last_deposit = input.to_f
        @balance += @last_deposit
        puts "You successfully deposited $#{input}."
      break
      end
      m += 1

    end

  end

  def password_checking
    n=0
    while n<3

      puts "Please enter the password"
      input_password = gets
      if input_password.to_i == @password

        return true

      else
        puts "Wrong Password!"
      end
    n += 1
    end
    return false
  end

  def display_balance

    if password_checking
      puts @balance
    else
      puts "Not authorised to access the account"
    end

  end

  def withdraw

    if password_checking
      puts "How much money would you like to withdraw?"
      @last_withdraw = gets.to_f
      @balance -= @last_withdraw
    else
      puts "Not authorised to access the account"
    end

  end

  def gain_interest
    @interest = @balance * @interest_rate
    @balance += @interest
  end

end
