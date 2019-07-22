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

  def cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_can_talk()
    return "#{@student_name}: I can talk!"
  end

  def favourite_language(fave_language)
    return "#{@student_name}: My favourite language is #{fave_language}!"
  end

end
