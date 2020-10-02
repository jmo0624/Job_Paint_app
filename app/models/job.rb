class Job < ApplicationRecord
  belongs_to :user
  has_many :paints
  has_many :users, through :comments
end
