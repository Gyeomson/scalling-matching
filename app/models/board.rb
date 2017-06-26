class Board < ActiveRecord::Base
    has_many :comments
    has_many :register
end
