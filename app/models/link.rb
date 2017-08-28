class Link < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :genres, optional: true 
end
