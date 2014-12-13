class Geoname < ActiveRecord::Base
    self.table_name = 'geoname'
    self.primary_key = 'geonameid'
    belongs_to :country, :foreign_key => 'country'
    attr
    def self.listSuggestions (term)
        suggestions = self.where("name LIKE ?", "#{term}%").joins(:country).limit(5)
    end
    
end