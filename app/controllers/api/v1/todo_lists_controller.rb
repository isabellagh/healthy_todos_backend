class Api::V1::TodoListsController < ApplicationController

  def index 
    todo_lists = Task.all
    render json: TodoListSerializer.new(todo_lists) 
  end 

  def create
    todo_list = TodoList.new(todo_list_params)
    if todo_list.save 
      render json: todo_list, status: :accepted
    else 
      render json: {errors: todo_list.errors.full_messages}, status: :unprocessible_entity
    end 
  end 

  private

  def todo_list_params 
    params.require(:todo_lists).permit(:name)
  end

end
