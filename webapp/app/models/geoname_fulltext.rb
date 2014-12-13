class GeonameFulltext < ActiveRecord::Base
    set_table_name 'geoname_fulltext'
    set_primary_key 'geonameid'
    
    def returnSuggestions (term)
        
    end
end