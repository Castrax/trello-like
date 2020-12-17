class TodosController < ApplicationController
  before_action :set_todo, only: :move

  def index
    @lists = List.all
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save
      render partial: 'show', locals: { todo: @todo }, status: :ok
    else
      render partial: 'form', locals: { todo: @todo }, status: :unprocessable_entity
    end
  end

  def move
    @todo.insert_at(params[:position].to_i)
    @todo.update(list_id: params[:list_id])
    head :ok
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title, :description, :list_id, :position)
  end
end
