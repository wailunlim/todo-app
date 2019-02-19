require 'test_helper'

class EditTodoTest < ActionDispatch::IntegrationTest
  
  def setup
    @todo = todos(:one)
  end

  test "unsuccesful edit" do
    get edit_todo_path(@todo)
    assert_template 'todos/edit'
    patch todo_path(@todo), params: {
      todo: { title: "test",
              task: "  ",
              tag: "testing"}
    }
    assert_template 'todos/edit'
  end
end
