class MypagesController < ApplicationController
    def index
      @user = User.find_by(uid: session[:login_uid])
      @groups = Group.all
      @user_groups = @user.join_groups.order(:name)
    end
    
end
