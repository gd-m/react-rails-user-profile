class Api::V1::UsersController < ApplicationController
    def create
        @user = User.new(users_param)
        if @user.save!
            login!
            @user_json = UserSerializer.new(current_user)
            render json: {
                logged_in: true,
                user: @user_json
            }            
        else
            render json: {
                logged_in: false,
                error: @user.errors.full_messages.to_sentence
            }
        end
    end

    private

    def users_param 
        params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
