class Student

  attr_accessor :name, :cohort, :language

  def initialize(name, cohort, language)
    @name = name
    @cohort = cohort
    @language = language
  end

  def student_talks
    return "I can talk"
  end

  def favourite_language
    return "I love " +  @language
  end

end
