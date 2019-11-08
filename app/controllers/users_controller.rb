class UsersController < ApplicationController
    
    def show 
        user = User.find(params[:id])
        # if user_id_from_token == user_id.to_i
        #     user = User.find(user_id) 
        #     render json: user
        # else 
        #     render json: { wrong_token: true}, status: :unauthorized
        # end
        render json: user
    end

    def create
        user = User.create(user_params)
        # if user.valid?
        #     render json: {ok: true}
        # else
        #     render json: { errors: user.errors.full_messages } , status: :unprocessable_entity
        # end 
        render json: user
    end 


    private

    def user_params
        params.permit(:username, :password)
    end




end
