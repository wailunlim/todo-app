class TodosController < ApplicationController
  def new
    @todo = Todo.new
  end
  
  def show
    @todo = Todo.find(params[:id])
  end
end
