class TodosController < ApplicationController
  before_action :set_todo, only: [:move, :destroy, :edit, :update]

  def index
    @lists = List.all
  end

  def new
    @todo = Todo.new(list_id: params[:list], position: params[:position])
  end

  def edit
  end

  def create
    @todo = Todo.new(todo_params)
    if @todo.save!
      render partial: 'show', locals: { todo: @todo }, status: :ok
    else
      render partial: 'form', locals: { todo: @todo }, status: :unprocessable_entity
    end
  end

  def update
    respond_to do |format|
      if @todo.update(todo_params)
        format.html { redirect_to @todo, notice: 'Todo was successfully updated.' }
        format.json { render :show, status: :ok, location: @todo }
      else
        format.html { render :edit }
        format.json { render json: @todo.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @todo.destroy
    respond_to do |format|
      format.html { redirect_to todos_url, notice: 'Todo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def move
    @todo.update(position: params[:position], list_id: params[:list_id])
    head :ok
  end

  private

  def set_todo
    @todo = Todo.find(params[:id])
  end

  def todo_params
    params.require(:todo).permit(:title, :description, :list_id, :position, :user_id)
  end
end
