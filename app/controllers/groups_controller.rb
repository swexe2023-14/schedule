class GroupsController < ApplicationController
    
    def index
        @groups = Group.all
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
end