class Country < ActiveRecord::Base
    self.table_name = 'country'
    self.primary_key = 'ISO'
    has_many :geonames
end
