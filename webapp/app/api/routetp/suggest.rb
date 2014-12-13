module Routetp
    class Suggest < Grape::API
        format :json
        #catch all the errors
        rescue_from :all
        default_error_status 400
    
            
        params do
            requires :term, type: String, regexp: /^[a-zA-Z]+$/
        end
        
        
        resource :suggest do
            desc "Return the suggestions"
            post do
                #We are limiting the search suggestion to 5 only for performance
                suggestions = Geoname.listSuggestions(params[:term])
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