class ApplicationRecord < ActiveRecord::Base
    def self.table_name
        #puts self.ancestors.inspect
        self.name.to_s.downcase
    end
    self.abstract_class = true
end
