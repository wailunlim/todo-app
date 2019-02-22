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
      redirect_to @todo
    else
      render 'new'
    end
  end

  def index
    ActsAsTaggableOn::Tag.find_each { |tag| tag.destroy if tag.taggings.count == 0 }
    if params[:tags].nil?
      @todos = Todo.all
    else
      @todos = Todo.tagged_with(params[:tags])
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    @todo = Todo.find(params[:id])
    if @todo.update_attributes todo_params
      redirect_to @todo
    else
      render 'edit'
    end
  end

  def destroy
    Todo.find(params[:id]).destroy
    redirect_to todos_url
  end

  def toggle_complete
    @todo = Todo.find(params[:id])
    if @todo.update_attribute(:completed?, !@todo.completed?)
      redirect_to todos_url
    end
  end

  private

    def todo_params
      params.require(:todo).permit(:title, :task, :tag_list)
    end
end
