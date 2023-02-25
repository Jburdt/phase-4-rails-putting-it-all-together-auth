class UsersController < ApplicationController
  rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
  skip_before_action :authorize, only: :create
  # before_action :authorize

  # DELETE FOR TESTING ONLY
  # def index
  #   user = User.all
  #   render json: user 
  # end

  # POST /signups
  def create
    user = User.create!(user_params)
    session[:user_id] = user.id 
    render json: user, status: :created 
  end

  # GET /me to stay auto-logged in
  def show
    user = User.find_by(id: session[:user_id])
    if user
      render json: user, status: :created 
    else
      render json: { error: "Not authorized" }, status: :unauthorized
    end
  end

  private

  #users strong params
  def user_params
    params.permit(:username, :image_url, :bio, :password, :password_confirmation)
  end

  # INVALID DATA RESPONS
  def render_unprocessable_entity_response(invalid)
    render json: { errors: invalid.record.errors.full_messages  }, status: :unprocessable_entity
  end

 # NOT AUTHORIZED RESPONSE
  def authorize
    return render json: { error: "Not authorized" }, status: :unauthorized unless session.include? :user_id
  end

end
