require('minitest/autorun')
require('minitest/rg')
require_relative('../student_lab')

class TestStudent < MiniTest::Test

def test_student_name
  student = Student.new('Myriam', 'E29', 'ruby')
  assert_equal('Myriam', student.name)
end

def test_student_cohort
  cohort = Student.new('Pim', 'G21', 'java')
  assert_equal('Pim', cohort.name)
end

def test_update_student_name
  student = Student.new('Myriam', 'E29', 'ruby')
  student.name = 'Carol'
  assert_equal('Carol', student.name)
end

def test_update_student_cohort
  student = Student.new('Pim', 'G21', 'java')
  student.cohort = 'G5'
  assert_equal('G5', student.cohort)
end

def test_greet_student
  student = Student.new('Jane','G29', 'JavaScript')
  assert_equal("I can talk", student.greet)
end

def test_favourite_language
  student = Student.new('Lidia', 'C12', 'python')
  assert_equal('I love python', student.favourite_language)
end





end
