class Topic < ApplicationRecord
  validates_prescence_of :title
  
  has_many :blogs
end
