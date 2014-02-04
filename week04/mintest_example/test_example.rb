require 'minitest/autorun'

class TestMyClass < MiniTest::Unit::TestCase
  def setup
    @my_obj = MyClass.new
  end
  def test_expected_output
    assert_equal 2, @my_obj.two
  end
end

class MyClass
	def two
		2
	end
end