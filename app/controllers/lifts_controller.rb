class LiftsController < ApplicationController
  def new
    @lift = Lift.new
  end

  def show
    @workout = Workout.find(params[:id])
    @lift = Lift.find(params[:id])
  end

  def index
    @workout = Workout.find(params[:id])
    @lift = @workout.lifts.all

  end
end
