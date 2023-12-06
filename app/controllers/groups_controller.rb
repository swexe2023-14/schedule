class GroupsController < ApplicationController
    
    def index
        @groups = Group.all
    end
    
    def show
      @user = User.find(params[:id])
    end    
    
    def new
        @group = Group.new
    end
    
    def create
        @group = Group.new
        if @group.save
            redirect_to groups_index_path
        else
            render 'new'
        end
    end
    
    def edit
        @group = Group.find(params[:id])
    end
    
    def update
        if @group.update(group_params)
            redirect_to 
        else
            render "edit"
        end
    end
    
    private
    
    def group_params
      params.require(:group).permit(:name)
    end
    
    def ensure_correct_user
        @group = Group.find(params[:id])
        unless @group.owner_id == current_user.id
            redirect_to groups_path
        end
    end
end