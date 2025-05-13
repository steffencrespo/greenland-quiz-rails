require "test_helper"

class QuizzesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get quizzes_show_url
    assert_response :success
  end

  test "should get answer" do
    get quizzes_answer_url
    assert_response :success
  end

  test "should get result" do
    get quizzes_result_url
    assert_response :success
  end
end
