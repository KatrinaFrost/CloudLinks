class Link < ApplicationRecord
  belongs_to :user
  belongs_to :genres 
end
