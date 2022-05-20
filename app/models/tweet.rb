class Tweet < ApplicationRecord
    belongs_to :user
    has_many :comments , dependent: :destroy
    validates :tweet , presence: true
end 
