class JoinsController < ApplicationController
    def create
        group = Group.find(params[:group_id])
        user = User.find_by(uid:session[:login_uid])
        user.join_groups << group
        redirect_to root_path
    end
    
    def destroy
        group = Group.find(params[:id])
        user = User.find_by(uid: session[:login_uid])
        group.joins.find_by(user_id: user.id).destroy
        redirect_to root_path
    end
end
