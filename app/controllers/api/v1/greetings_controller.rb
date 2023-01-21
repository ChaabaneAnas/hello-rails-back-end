# greeting controller

module Api
  module V1
    class GreetingsController < ApplicationController
      def index
        @greeting = Greeting.find(Greeting.pluck(:id).sample)
        render json: @greeting
      end
    end
  end
end
