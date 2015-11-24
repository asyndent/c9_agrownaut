class Customer < ActiveRecord::Base
    has_many :temperatures
end
