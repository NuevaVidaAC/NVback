require 'test_helper'

class LessonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson = lessons(:one)
  end

  test "should get index" do
    get lessons_url, as: :json
    assert_response :success
  end

  test "should create lesson" do
    assert_difference('Lesson.count') do
      post lessons_url, params: { lesson: { date: @lesson.date, description: @lesson.description, end_hour: @lesson.end_hour, name: @lesson.name, session_id: @lesson.session_id, start_hour: @lesson.start_hour } }, as: :json
    end

    assert_response 201
  end

  test "should show lesson" do
    get lesson_url(@lesson), as: :json
    assert_response :success
  end

  test "should update lesson" do
    patch lesson_url(@lesson), params: { lesson: { date: @lesson.date, description: @lesson.description, end_hour: @lesson.end_hour, name: @lesson.name, session_id: @lesson.session_id, start_hour: @lesson.start_hour } }, as: :json
    assert_response 200
  end

  test "should destroy lesson" do
    assert_difference('Lesson.count', -1) do
      delete lesson_url(@lesson), as: :json
    end

    assert_response 204
  end
end
