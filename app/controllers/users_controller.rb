class UsersController < ApplicationController

    def index
        render(json: User.all) 
    end
    
    def show
        render(json: User.find(params[:id]))
    end

    def create
        User.create(user_params)
    end

    def destroy
    end

    private

    def user_params
        params
          .require(:user)
          .permit(:name, :password, :username)
    end
end
