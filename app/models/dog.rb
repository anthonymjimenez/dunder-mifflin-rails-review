class Dog < ApplicationRecord
    has_many :employees

    def self.sort_by_employee_count
        Dog.all.sort_by {|dog| -dog.employee.count}
    end
end
