class GroupsController < ApplicationController
    before_action :authenticate_user!
    before_action :ensure_correct_user, only: [:edit, :update]
    
    def index
        @groups = Group.all
    end
    
    
    def new
        @group = Group.new
    end
    
    def create
        @group = Group.new
        @group.owner_id = current_user.id
        if @group.save
            redirect_to 
        else
            render 'new'
        end
    end
    
    def edit
        
    end
    
    def update
        
    end
    
    
end
