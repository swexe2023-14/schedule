class JoinsController < ApplicationController
    def create
        
        group = Group.find(params[:group_id])
        unless group.joined?(current_user)
            group.join(current_user)
        end
        #user = User.find_by(uid:session[:login_uid])
        #user.join_groups << group
        redirect_to groups_path
    end
    
    def destroy
        group = Group.find(params[:id])
        if group.joined?(current_user)
            group.unjoin(current_user)
        end
        #user = User.find_by(uid: session[:login_uid])
        #group.joins.find_by(user_id: user.id).destroy
        redirect_to groups_path
    end
end

    def login
        user = User.find_by(uid: params[:uid])
        if user != nil
            login_password = BCrypt::Password.new(user.pass)
        if login_password == params[:pass]
            session[:login_uid] = user.uid
            redirect_to mypages_index_path
        else
          render "error"
        end
    end
    end