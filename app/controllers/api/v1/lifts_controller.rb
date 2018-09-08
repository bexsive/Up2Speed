module Api
  module V1

    class LiftsController < ApplicationController
      def new
        @lift = Lift.new
      end

      def show
        @workout = Workout.find(params[:id])
        @lift = Lift.find(params[:id])
        render json: {status: 'SUCCESS', Message: 'Loaded lifts', data: @lift}, status: :ok
      end

      def index
        @workout = Workout.find(params[:workout_id])
        @lift = @workout.lifts.all

      end
    end
  end
end
