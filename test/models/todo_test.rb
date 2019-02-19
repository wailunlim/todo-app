require 'test_helper'

class TodoTest < ActiveSupport::TestCase

  def setup
    @todo = Todo.new(title: "Example title", task: "Example task", tag: "example", completed: false)
  end

  test "should be valid" do
    assert @todo.valid?
  end

  test "task should be present" do
    @todo.task = " "
    assert_not @todo.valid?
  end

  test "title should not be too long" do
    @todo.title = "x" * 100
    assert_not @todo.valid?
  end

  test "tags is saved as lowercase" do
    mixed_case = "MiXeD"
    @todo.tag = mixed_case
    @todo.save
    assert_equal mixed_case.downcase, @todo.reload.tag
  end

  test "completed status should be set false by default" do
    @todo.completed = nil
    @todo.save
    assert_not @todo.reload.completed
  end
end
