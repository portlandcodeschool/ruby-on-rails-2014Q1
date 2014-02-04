require 'minitest/autorun'
require './test_class.rb'

# This is an example of 
# 1. testing a class in another file
# 2. testing a method that outputs to stdout

class TestMyClass < MiniTest::Unit::TestCase
  def setup
    @p = Printer.new
  end

  def test_example
    assert_output("hi\n"){ puts "hi" }
  end
  def test_expected_puts_output
    assert_output("Do it!\n"){ @p.do_it }
  end
end

