module Api
  module V1

    class MealsController < ApplicationController
      def new
        @meal = Meal.new
      end

      def show
        @meal = Meal.find(params[:id])
        render json: {status: 'SUCCESS', Message: 'Loaded meals', data: @meal}, status: :ok
      end

      def index
        @meals = Meal.all
        render json: {status: 'SUCCESS', Message: 'Loaded meals', data: @meals}, status: :ok

      end
    end
  end
end
