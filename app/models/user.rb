class User < ApplicationRecord
    has_many :joins
<<<<<<< HEAD
    has_many :join_groups, through: :joins, source: :group
=======
    has_many :groups
    has_many :join_groups,through: :joins,source:group
>>>>>>> calendar
end
