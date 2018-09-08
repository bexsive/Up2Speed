module Api
  module V1
    class WorkoutsController < ApplicationController

      def index
        @workouts = Workout.all
        render json: {status: 'SUCCESS', Message: 'Loaded lifts', data: @workouts}, status: :ok
      end

      def show
        @workout = Workout.find(params[:id])
        render json: {status: 'SUCCESS', Message: 'Loaded lifts', data: @workout}, status: :ok
      end

    end
  end
end
