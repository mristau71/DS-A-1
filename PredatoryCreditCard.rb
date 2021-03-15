class PredatoryCreditCard < CreditCard
  def initialize(customer, bank, acnt, limit, apr)
    super(customer, bank, acnt, limit)
    @apr = apr
  end

  def charge(price)
    success = super(price)

    unless success
      @balance += 5
    end

    return success
  end

  def process_month
    if @balance > 0
      monthly_factor = (1.0 + @apr) ** (1.0/12)
      puts monthly_factor
      @balance *= monthly_factor
    end
  end
end