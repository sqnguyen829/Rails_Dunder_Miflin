class Employee < ApplicationRecord
    belongs_to :dog
    def fullName
        self.first_name + " " + self.last_name
    end
end
