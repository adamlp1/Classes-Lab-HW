require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestCodeclanStudent < MiniTest::Test

def test_student_name
  codeclan_student = CodeclanStudent.new("Michael", "E35", "I can talk!", "Ruby")
  assert_equal("Michael", codeclan_student.name)
end

def test_cohort_name
  codeclan_student = CodeclanStudent.new("Michael", "E35", "I can talk!", "Ruby")
  assert_equal("E35", codeclan_student.cohort)
end

def test_set_student_name
  codeclan_student = CodeclanStudent.new("Michael", "E35", "I can talk!", "Ruby")
  codeclan_student.name = "Adam"
  assert_equal("Adam", codeclan_student.name)
end

def test_set_cohort_name
  codeclan_student = CodeclanStudent.new("Michael", "E35", "I can talk!", "Ruby")
  codeclan_student.cohort = "E36"
  assert_equal("E36", codeclan_student.cohort)
end

def test_student_speech
  codeclan_student = CodeclanStudent.new("Michael", "E35", "I can talk!", "Ruby")
  assert_equal("I can talk!", codeclan_student.message)
end

def test_fave_language
  codeclan_student = CodeclanStudent.new("Michael", "E35", "I can talk!", "Ruby")
    codeclan_student.my_fave_language()
  assert_equal("I love Ruby", codeclan_student.language)
end


end
