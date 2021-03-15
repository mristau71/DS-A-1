##
# A consumer credit card.
class CreditCard
  attr_reader :customer, :bank, :account, :limit, :balance

  ##
  # Create a new credit card instance.
  #
  # The initial balance is zero.
  #
  # customer::  the name of the customer
  # bank::      the name of the bank
  # acnt::      the account identifier
  # limit::     credit limit ($)
  def initialize(customer, bank, acnt, limit)
    @customer = customer
    @bank = bank
    @account = acnt
    @limit = limit
    @balance = 0
  end

  ##
  # Charge given price to the card, assuming sufficient credit limit.
  # 
  # Return True if charge was processed; False if charge was denied.
  def charge(price)
    puts "price: #{price}, balance: #{balance}"
    if price + @balance > @limit
      return false
    else
      @balance += price
      return true
    end
  end

  ##
  # Process customer payment that reduces balance.
  def make_payment(amount)
    @balance -= amount
  end

end
