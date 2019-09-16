require("minitest/autorun")
#require("mintest/rg")
require_relative("../student")

class TestStudent< Minitest::Test


  def test_get_name
    student = Student.new("Lewis", "E34", " ")
    assert_equal("Lewis", student.get_name())
  end

  def test_get_cohort
    student = Student.new("Lewis", "E34", " ")
    assert_equal("E34", student.get_cohort())
  end


  def test_set_name
    student = Student.new("Lewis", "E34", " ")
    student.set_name("Bob")
    assert_equal("Bob", student.get_name())
  end

  def test_set_cohort
    student = Student.new("Lewis", "E34", " ")
    student.set_cohort("E35")
    assert_equal("E35", student.get_cohort())
  end

  def test_can_talk
    student = Student.new("Lewis", "E34", " ")
    assert_equal("I can talk", student.student_talk())
  end

  def test_language
    student = Student.new("Lewis", "E34", "Ruby")
    assert_equal("my favourite language is Ruby", student.student_language())
  end


end
