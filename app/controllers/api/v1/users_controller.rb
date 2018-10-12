class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show]

  def show
    user = User.find(params[:id])
    render json: user.journals
  end

  def create
    @user = User.new(
      username: params[:username],
      first_name: params[:first_name],
      last_name: params[:last_name],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )

    if @user.save
      create_jwt = issue_token(id: @user.id)
      render json: { user: @user.id, jwt: create_jwt }
    else
      render json: {
        error: "Couldn't create user"
      }, status: 422
    end
  end
end
