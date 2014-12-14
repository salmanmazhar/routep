class Geoname < ActiveRecord::Base
    self.table_name = 'geoname'
    self.primary_key = 'geonameid'
    belongs_to :country, :foreign_key => 'country'
    attr
    def self.listSuggestions (term)
        suggestions = self.where("name LIKE ?", "#{term}%").includes(:country).limit(5)
        #suggestions = Country.find_by_sql("select * from geoname g JOIN country c on g.country = c.ISO where g.name LIKE '?' LIMIT 5", "#{term}%")
        #suggestions = self.joins(:country).where("name LIKE ?", "#{term}%").limit
        puts formateSuggestion suggestions
    end
    
    
    private
    def self.formateSuggestion (suggestions)
        suggestions.each do |suggestion|
            # formate each suggestion first for the wanted fields: geoname, name, asciiname, latitude, longitude, country, timezone and city_clicks
            test = suggestion.geonameid
        end
        return test
    end
end