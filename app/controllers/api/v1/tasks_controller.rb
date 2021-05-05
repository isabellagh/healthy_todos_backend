class Api::V1::TasksController < ApplicationController

  def index 
    tasks = Task.all
    render json: tasks 
  end 

  def create
    task = Task.new(tasks_params)
    if tasks.save 
      render json: tasks, status: :accepted
    else 
      render json: {errors: tasks.errors.full_messages}, status: :unprocessible_entity
    end 
  end 

  private

  def tasks_params 
    params.require(:tasks).permit(:name, :notes, :completed, :todo_list_id)
  end 

end