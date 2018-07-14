class TodosController < ApplicationController
  def new
    @project = Project.find(params[:project_id])
    @todo = @project.todos.create(todo_params)
  end
  def edit
    @project = Project.find(params[:project_id])
    @todo = @project.todos.find(params[:id])
  end

  def create
    @project = Project.find(params[:todo][:project_id])
    @todo = @project.todos.create(todo_params)
    redirect_to '/'
  end

  def update
    @project = Project.find(params[:project_id])
    @todo = @project.todos.find(params[:id])

    if @todo.update(todo_params)
      redirect_to @project
    else
      render 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:project_id])
    @todo = @project.todos.find(params[:id])
    @todo.destroy
    redirect_to project_path(@project)
  end

  private
    def todo_params
      params.require(:todo).permit(:text, :isCompleted)
    end
end
