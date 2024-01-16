class Event < ApplicationRecord
    has_many :calendars
    has_many :groups
end
