class Paint < ApplicationRecord
  belongs_to :job
  has_many :comments, through :user
end
