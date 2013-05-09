class Review < ActiveRecord::Base
    validates :title, :presence => true
    validates :poster, :presence => true
end
