class GroupsController < ApplicationController
    before_action :authenticate_user!
    before_action :set_group, only: [:show,:edit,:update,:destroy]

    def index
        # @groups = Group.where(id: current_user.groups.pluck(:id))
        @groups = current_user.groups.includes(:users)
        @group = Group.new        
        @users = User.all
    end

    def new
        @group = Group.new
    end

    def create
        @group = Group.new(group_params)
        @group.created_by = current_user.id
        @group.updated_by = current_user.id

        if @group.save
            redirect_to groups_path
        else
            render 'new'
    end
    end

    def show
        @users = User.where(year: current_user.year, branch: current_user.branch).where.not(id: @group.users.pluck(:id))
        @users = @users.map {|u| [u.name, u.id]}
        @group_member = UserGroup.new
    end

    def update #save changes
        @group.updated_by = current_user.id
        if @group.update_attributes(group_params)
            redirect_to groups_path
        else
            render 'edit'
        end
    end

    def destroy
        @group.destroy
        redirect_to groups_path
    end
            

    private

    def group_params
        params.require(:group).permit(:name,:code,:criteria, :user_limit, :created_by,:updated_by)
    end

    def set_group
        @group = Group.find(params[:id])
    end
end