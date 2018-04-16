class PreferencesController > ApplicationController
    def create
        current_user.destinations << Destination.find(params[:destination_id])
            
    end

end