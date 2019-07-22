require('minitest/autorun')
require('minitest/rg')
require_relative('../student.rb')

class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new("Stephen", "g14")
  end

  def test_get_student_name()

    assert_equal("Stephen", @student.get_student_name)

  end

  def test_get_cohort()

    assert_equal("g14", @student.get_cohort)

  end 

end
