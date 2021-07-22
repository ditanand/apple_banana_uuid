class Apple < ApplicationRecord
  include UniqueId 
  has_many :bananas
end
