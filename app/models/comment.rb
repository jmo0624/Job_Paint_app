class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :job
  belongs_to :paints
end
