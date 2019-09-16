class Student



  def initialize(input_name, input_cohort, input_language)
    @name = input_name
    @cohort = input_cohort
    @fave_language = input_language


  end

  def get_name()
    return @name
  end

  def get_cohort()
    return @cohort
  end

  def set_name(new_name)
    @name= new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def student_talk()
    return "I can talk"
  end

  def student_language()
    return "my favourite language is #{@fave_language}"
  end

end
