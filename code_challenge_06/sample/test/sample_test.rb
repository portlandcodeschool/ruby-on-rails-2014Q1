# sample/test/sample_test.rb

require './sample_test_helper.rb'

class MyTest < MiniTest::Unit::TestCase

  include Rack::Test::Methods

  def app
    Sinatra::Application
  end

  def test_hello_world
    get '/'
    assert last_response.ok?
    assert_equal "Hello, World!", last_response.body
  end

  def test_post
    post '/'
    assert last_response.ok?
    assert_equal "Caught a post", last_response.body
  end
end