class Book < ApplicationRecord
    validates :title, presence: true
    validates :description, presence: true, length: { minimum: 10}
    has_many :reviews, dependent: :destroy
end
