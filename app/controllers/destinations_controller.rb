class DestinationsController < ApplicationController
    #before_action :set_destination, only: [:show, :edit, :update, :destroy]
    # Prevent anonymous users from 
    # performing CUD on houses
    #before_action :authorize, except: [:index, :show]
    def index
        @destination = current_user.destinations
    end
end