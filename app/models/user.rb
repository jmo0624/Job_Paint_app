class User < ApplicationRecord
    has_many :job
    has_many :paints, through :job
    has_many :comments
end
