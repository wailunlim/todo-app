class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end
  
  def show
    @todo = Todo.find(params[:id])
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      # Successful save, handle this here
    else
      render 'new'
    end
  end

  private

    def todo_params
      params.require(:todo).permit(:title, :task, :tag)
    end
end
