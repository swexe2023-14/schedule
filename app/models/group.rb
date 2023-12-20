class Group < ApplicationRecord
    has_many :joins,dependent: :destroy
    has_many :join_users, through: :joins, source: :user
    
    def join(user)
        joins.create(user_id: user.id)
    end
    
    def unjoin(user)
        joins.find_by(user_id: user.id).destroy
    end

    def joined?(user)
        join_users.include?(user)
    end
end
