class Api::SessionsController < ApplicationController

    def create
        @user = User.find_by_credentials(params[:user][:username], params[:user][:password])

        if @user
            login!(@user)
        else
            flash.now[:errors] = ['Invalid credentials']
        end
    end

    def destroy
        logout!
        
    end
    

end