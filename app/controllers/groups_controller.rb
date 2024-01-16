class GroupsController < ApplicationController
    
    def index
        @groups = Group.all
        @joins = Join.where(group_id: params[:group_id])
    end
    
    def new
        @group = Group.new
    end
    
    def create
        @group = Group.new(name: params[:group][:name])
        if @group.save
            redirect_to groups_path
        else
            render 'new'
        end
    end

    def edit
        @group = Group.find(params[:id])
    end
    
    def destroy
        Group.find(params[:id]).destroy
        redirect_to groups_path
    end
    
    def joingroup
        group = Group.find(params[:group_id])
        pass = Group.find(params[:group_pass])
        unless group.joined?(current_user) and pass.joined?(:g_pass)
            group.join(current_user)
        end
        redirect_to groups_path
    end
    
end