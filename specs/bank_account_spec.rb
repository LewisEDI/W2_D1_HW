require("minitest/autorun")
#require("mintest/rg")
require_relative("../bank_account")

class TestBankAccount < Minitest::Test

  def test_get_holder_name
    bank_account = BankAccount.new("Harrison", 10, "personal")
    assert_equal("Harrison", bank_account.holder_name())
  end
# method is a function attaced to an object

def test_get_holder_balance
  bank_account = BankAccount.new("Zsolt", 10, "personal")
  assert_equal(10, bank_account.balance())
end

def test_get_holder_type
  bank_account = BankAccount.new("Zsolt", 10, "personal")
  assert_equal("personal", bank_account.type())
end

  def test_set_holder_name
    bank_account = BankAccount.new("Zsolt", 10, "personal")
    bank_account.holder_name = "Tony"
    assert_equal("Tony", bank_account.holder_name())
  end

  def test_set_holder_balance
    bank_account = BankAccount.new("Zsolt", 10, "personal")
    bank_account.balance = 200
    assert_equal(200, bank_account.balance())
  end

  def test_set_holder_type
    bank_account = BankAccount.new("Zsolt", 10, "personal")
    bank_account.type = "business"
    assert_equal("business", bank_account.type())
  end

  def test_pay_into_account
    bank_account = BankAccount.new("Zsolt", 10, "personal")
    bank_account.pay_in(50)
    assert_equal(60, bank_account.balance())
end

   def test_pay_monthly_fee__10_for_personal
      bank_account = BankAccount.new("Zsolt", 10, "personal")
      bank_account.pay_monthly_fee()
      assert_equal(0, bank_account.balance())
    end

    def test_pay_monthly_fee__50_for_business
        bank_account = BankAccount.new("Louise", 10000, "business")
        bank_account.pay_monthly_fee()
        assert_equal(9950, bank_account.balance())
    end

end
