class ApplicationController < ActionController::Base
    helper_method :current_user
    private
    def current_user
        if session[:uid]
            User.find_by(uid: session[:uid])
        end
    end
end
