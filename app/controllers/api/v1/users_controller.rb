module Api
  module V1
    class UsersController < ApplicationController
      # skip_before_filter :restrict_access, :only => [:index]
      # GET /users
      # GET /users.json
      def index
        @users = User.all

        render json: @users
      end

      # GET /users/1
      # GET /users/1.json
      def show
        @user = User.find(params[:id])

        render json: @user
      end

      # POST /users
      # POST /users.json
      def create
        @user = User.new(user_params)

        if @user.save
          render json: @user, status: :created, location: "/api/v1/users/"+@user.id.to_s
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      # PATCH/PUT /users/1
      # PATCH/PUT /users/1.json
      def update
        @user = User.find(params[:id])

        if @user.update(user_params)
          head :no_content
        else
          render json: @user.errors, status: :unprocessable_entity
        end
      end

      # DELETE /users/1
      # DELETE /users/1.json
      def destroy
        @user = User.find(params[:id])
        @user.destroy

        head :no_content
      end

      private
        
        def user_params
          params.require(:user).permit(:name, :email, :provider, :uid)
        end
    end
  end
end