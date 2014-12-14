module Routetp
    class Suggest < Grape::API
        format :json
        #catch all the errors
        rescue_from :all
        default_error_status 400
        
    
            
        params do
            requires :term, type: String
        end
        
        
        resource :suggest do
            desc "Return the suggestions"
            post do
                suggestions = Geoname.listSuggestions(params[:term])
                #puts suggestions.inspect
            end
            get do
                #We don't want
                error!("Method is not allowed")
            end
            put do 
                 error!("Method is not allowed")
            end
            delete do
                error!("Method is not allowed")
            end
            
        end
    end
end