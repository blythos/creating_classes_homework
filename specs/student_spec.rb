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

  def test_set_student_name()

    @student.student_name("Joe")

    assert_equal("Joe", @student.get_student_name)

  end

  def test_set_cohort()

    @student.cohort("e19")

    assert_equal("e19", @student.get_cohort)

  end

end
