require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student.rb')

class TestCodeclanStudent < MiniTest::Test

def test_student_name
  codeclan_student = CodeclanStudent.new("Michael", "E35")
  assert_equal("Michael", codeclan_student.name)
end

def test_cohort_name
  codeclan_student = CodeclanStudent.new("Michael", "E35")
  assert_equal("E35", codeclan_student.cohort)
end 




end
