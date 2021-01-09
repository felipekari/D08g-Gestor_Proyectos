class Project < ApplicationRecord
    validates :name, :description, :state, presence: true
end
