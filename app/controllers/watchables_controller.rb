class WatchablesController < ApplicationController
  # before_action :find_watchable, only: [:show, :update, :destroy]

  # GET /watchables | show all watchables
  def index
    render json: Watchable.all, status: :ok
  end

  # GET /watchables/# | get a watchable
  def show
    render json: find_watchable, status: :ok
  end

  # POST /watchables | create a watchable
  # def create
  #   user = User.find(session[:user_id])

  #   new_watchable = user.watchables.build(watchable_params)

  #   if new_watchable.save
  #     render json: new_watchable, status: :created, location: new_watchable
  #   else
  #     render json: new_watchable.errors, status: :unprocessable_entity
  #   end
  # end
  def create
    current_user = User.find(session[:user_id])
    # @watchable = current_user.watchables.build(watchable_params)
    @watchable = current_user.watchables.build(watchable_params)
    if @watchable.save
      render json: @watchable, status: :created, location: @watchable
    else
      render json: @watchable.errors, status: :unprocessable_entity
    end
  end

  # PATCH /watchables/# | update a watchable
  def update
    if find_watchable.update(watchable_params)
      render json: find_watchable
    else
      render json: find_watchable.errors, status: :unprocessable_entity
    end
  end

  # DELETE /watchables/# | delete a watchable
  def destroy
    find_watchable.destroy!
    render json: {}, status: :gone
  end

  private

  def find_watchable
    Watchable.find(params[:id])
  end

  def current_user
    User.find_by(id: session[:user_id])
  end

  def watchable_params
    # params.permit(:title, :rating, :category_id, :summary, :favorite, :poster_url, :trailer_url, :user_id, :category_id, :service_id)
    params.permit(:title, :rating, :summary, :category_id, :favorite, :poster_url, :trailer_url, :user_id)
  end
end
