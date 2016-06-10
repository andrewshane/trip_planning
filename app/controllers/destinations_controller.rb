class DestinationsController < ApplicationController
  before_filter :authenticate_user!

  def index
    if params[:user_id]
      @user=User.find(params[:user_id])
      @destinations = @user.destinations.all
    else
      @destinations = Destination.all
    end
  end

  def show
    @destination = Destination.find(params[:id])
    @daily = Daily.new
  end

  def new
    @destination = Destination.new
  end

  def create
    
    @user=current_user
    @destination = Destination.new
    @destination.comments = params[:comments]
    @destination.country = params[:country]
    @destination.destination = params[:destination]
    @destination.user_id = @user.destinations.create(params[:user_id])


    if @destination.save
      redirect_to "/destinations", :notice => "Destination created successfully."
    else
      render 'new'
    end
  end

  def edit
    @destination = Destination.find(params[:id])
  end

  def update
    @destination = Destination.find(params[:id])

    @destination.comments = params[:comments]
    @destination.country = params[:country]
    @destination.destination = params[:destination]

    if @destination.save
      redirect_to "/destinations", :notice => "Destination updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @destination = Destination.find(params[:id])

    @destination.destroy

    redirect_to "/destinations", :notice => "Destination deleted."
  end
end
