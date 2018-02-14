class UserGroupsController < ApplicationController

    before_action :set_group

    def create
        @user_group = UserGroup.new(user_group_params)
        @user_group.created_by = current_user.id
        if @user_group.save
            redirect_to group_path(@group)
        else
            redirect_to group_path(@group)            
        end
    end


    private

    def set_group
        @group = Group.find(user_group_params[:group_id])
    end

    def user_group_params
        params.require(:user_group).permit(:user_id, :group_id)
    end
end
