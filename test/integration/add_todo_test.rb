require 'test_helper'

class AddTodoTest < ActionDispatch::IntegrationTest

  test "blank task is invalid" do
    get new_todo_path
    assert_no_difference 'Todo.count' do
      post todos_path, params: { todo: { title: "Test",
                                         task: "  " } }
    end
  end
end
