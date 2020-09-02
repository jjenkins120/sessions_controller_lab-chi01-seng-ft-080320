class SessionsController < ApplicationController
    def new

    end

    def create
        session[:name] = params[:name]
        if session[:name] == nil || []
            redirect_to new_session_path
        else 
            redirect_to controller: 'application', action: 'hello'
        end
    end

    def destroy
        session.delete :name
        redirect_to controller: 'application', action: 'hello'
      end
end