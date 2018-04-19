class DestinationsController < ApplicationController
    #before_action :set_destination, only: [:show, :edit, :update, :destroy]
    # Prevent anonymous users from 
    # performing CUD on houses
    #before_action :authorize, except: [:index, :show]
    
    def index
        if current_user.nil?
           redirect_to '/login'
        else
            @destinations = Destination.all
        end
    end

    def show
        @posts = Destination.find(params[:id]).posts
        @destination = Destination.find(params[:id])
    end
end