class TodosController < ApplicationController

    before_action :set_project
    before_action :set_todo, only: [:show,:edit,:update,:destroy]

    def index
        @todos = ToDo.all        
    end
    def new
        @todo = ToDo.new
    end


    def create
        @todo = ToDo.new(todo_params)
        @todo.project_id = @project.id
        @todo.status = "N"        
        if @todo.save
            redirect_to projects_path	
        else
            render 'new'
        end
    end

    def show
    end

    def update #save changes
        if @todo.update_attributes(todo_params)
            redirect_to project_todos_path
        else
            render 'edit'
        end
    end

    def destroy
        @todo.destroy
        redirect_to projects_path
    end

    def edit #display form for exiting record
        @todo = ToDo.find(params[:id])
    end

    private
    
    def set_project
        @project = Project.find(params[:project_id])
    end

    def set_todo
        @todo = ToDo.find(params[:id])
    end

    def todo_params
        params.require(:to_do).permit(:title,:_type,:status,:priority,:description)
    end

    
end
