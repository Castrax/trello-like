class TodosController < ApplicationController
  def index
    @lists = List.all
    @todos = Todo.all
  end
end
