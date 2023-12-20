class Group < ApplicationRecord
    has_many :joins
    has_many :join_users, through: :joins, source: :user
end
