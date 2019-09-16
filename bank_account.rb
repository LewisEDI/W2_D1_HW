class BankAccount

  attr_accessor(:holder_name, :balance, :type)

  def initialize(input_holder_name, input_balance, input_type)
    @holder_name = input_holder_name
    @balance = input_balance
    @type = input_type
  end

def get_holder_name()
    return @holder_name
end

def get_balance()
    return @balance
end

def get_type()
    return @type
end

def set_name(new_name)
    @holder_name = new_name
end

def set_balance(new_balance)
    @balance = new_balance
end

def set_type(new_type)
    @type = new_type
end

def pay_in(amount)
    @balance += amount
end

def pay_monthly_fee()
  fees = {
    "personal" => 10,
    "business" => 50,
    "saver" => 0
  }
  @balance -= fees[@type]
end
end
