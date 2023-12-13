class Group < ApplicationRecord
<<<<<<< HEAD
    has_many :joins
    has_many :join_users, through: :joins, source: :user
end
=======
    has_many :Joins
    has_many :join_users, through: :Joins,source: :user
end
>>>>>>> calendar
