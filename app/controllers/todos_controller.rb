class TodosController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @todo = @project.todos.create(todo_params)

    redirect_to root_path
  end
  def edit
    @project = Project.find(params[:project_id])
    @todo = @project.todos.find(params[:id])
  end

  def create
    @project = Project.find(params[:todo][:project_id])
    @todo = @project.todos.create(todo_params)

    redirect_to root_path
  end

  def update
    @todo = Todo.find(params[:id])
    @todo.update_attributes(todo_params)
    redirect_to '/'
  end

  def destroy
    @project = Project.find(params[:project_id])
    @todo = @project.todos.find(params[:id])
    @todo.destroy
  end

  private
    def todo_params
      params.require(:todo).permit(:text, :isCompleted)
    end
end
