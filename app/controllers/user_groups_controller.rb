class UserGroupsController < ApplicationController

    before_action :set_group, only: [:create]
    before_action :set_user_group, only: [:destroy]

    def create
        @user_group = UserGroup.new(user_group_params)
        @user_group.created_by = current_user.id
        if @user_group.save
            redirect_to group_path(@group)
        else
            redirect_to group_path(@group)            
        end
    end

    def destroy
        @group = @user_group.group
        @user_group.destroy
        redirect_to group_path(@group)
    end


    private

    def set_group
        @group = Group.find(user_group_params[:group_id])
    end
    
    def set_user_group
        @user_group = UserGroup.find(params[:id])
    end

    def user_group_params
        params.require(:user_group).permit(:user_id, :group_id)
    end
end
