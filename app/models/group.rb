class Group < ApplicationRecord
    has_many :Joins
    has_many :join_users, through: :Joins,source: :user
end
