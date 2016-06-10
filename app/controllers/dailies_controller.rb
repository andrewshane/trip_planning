class DailiesController < ApplicationController
before_filter :authenticate_user!

  def index
    @dailies = Daily.all
  end

  def show
    @daily = Daily.find(params[:id])
  end

  def new
    @daily = Daily.new
  end

  def create
    @daily = Daily.new
    @daily.destination_id = params[:destination_id]
    @daily.location = params[:location]
    @daily.comments = params[:comments]
    @daily.activity = params[:activity]
    @daily.day = params[:day]


    if @daily.save
      redirect_to :back, :notice => "Activity created successfully."
    else
      render 'new'
    end
  end

  def edit
    @daily = Daily.find(params[:id])
  end

  def update
    @daily = Daily.find(params[:id])

    @daily.destination_id = params[:destination_id]
    @daily.location = params[:location]
    @daily.comments = params[:comments]
    @daily.activity = params[:activity]
    @daily.day = params[:day]

    if @daily.save
      redirect_to :back, :notice => "Activity updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @daily = Daily.find(params[:id])

    @daily.destroy

    redirect_to :back, :notice => "Activity deleted."
  end
end
