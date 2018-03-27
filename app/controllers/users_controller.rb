class UsersController < ApplicationController

  def index
    if params[:search].present?
      @users = User.search(params[:search])
    else
      @users = User.all
    end
  end

  def autocomplete
    render json: User.search(params[:term], {
      fields: ["email"],
      limit: 10
      }).map(&:email)
  end
end
