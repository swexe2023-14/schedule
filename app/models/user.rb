class User < ApplicationRecord
    has_many :joins
    has_many :groups
    has_many :join_groups,through: :joins,source:group
end
