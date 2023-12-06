class User < ApplicationRecord
    has_many :group_users, dependent: :destroy
    has_many :groups, through: :group_users
end