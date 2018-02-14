class ProjectsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_project, only: [:show,:edit,:update,:destroy]

    def index
        @projects = Project.where(group_id: current_user.groups.pluck(:id)).includes(:group)
        @project = Project.new
        # @comments = current_user.projects.includes(:users)
        @comments = Comment.all 
        # @todos = current_user.projects.includes(:users)        
        @todos = ToDo.where(project_id: current_user.groups.pluck(:id)).includes(:project)
        # @users = User.all            
    end

    def new #display the for new record
     @project = Project.new
    end

    def create  #save new record submit/
        @project = Project.new(project_params)

        if @project.save
            redirect_to projects_path
        else
            render 'new'
        end
    end

    def show
        @comments = @project.comments.order(created_at: :desc)
        @comment = Comment.new
        @commentable = @project
        @todos = ToDo.all
        @todo = ToDo.new        
    end

    def edit #display form for exiting record
        @projects = Project.find(params[:id])
    end

    def update #save changes
        if @project.update_attributes(project_params)
            redirect_to projects_path
        else
            render 'edit'
        end
    end

    def destroy
        @project.destroy
        redirect_to projects_path
    end

    private
    def project_params
        params.require(:project).permit(:title,:year,:start,:project_id,:description,:end,:subject_id,:group_id,:image_url)
    end

    def set_project
        @project = Project.find(params[:id])
    end
end
