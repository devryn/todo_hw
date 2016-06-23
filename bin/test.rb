class TodoTest < MiniTest::Test
  def testlist
    ::TodoTest.new
  end

  def feedback(text)
    "User puts #{text.inspect} and ..."
  end

  def test_adding
    list.gi = "1"
    assert_equal '- ', testlist.run, feedback
  end
end 
