class ApplicationController < ActionController::Base
    helper_method :current_user
    before_action :set_group_id_in_session
    
    private
    def current_user
        if session[:login_uid]
            User.find_by(uid: session[:login_uid])
        end
    end
    
    def set_group_id_in_session
        session[:group_id] = params[:group_id] if params[:group_id].present?
    end

end
