class MypagesController < ApplicationController
    def index
      @user = User.find_by(uid: session[:login_uid])
      @groups = Group.all
    end
    
    
end
