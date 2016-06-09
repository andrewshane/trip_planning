class DailiesController < ApplicationController
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
      redirect_to "/dailies", :notice => "Daily created successfully."
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
      redirect_to "/dailies", :notice => "Daily updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @daily = Daily.find(params[:id])

    @daily.destroy

    redirect_to "/dailies", :notice => "Daily deleted."
  end
end
