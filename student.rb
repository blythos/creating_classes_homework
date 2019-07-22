class Student

  def initialize(student_name, cohort)
    @student_name = student_name
    @cohort = cohort
  end

  def get_student_name()
    return @student_name
  end

  def get_cohort()
    return @cohort
  end

  def student_name(new_name)
    @student_name = new_name
  end
  

end
