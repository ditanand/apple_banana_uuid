class Banana < ApplicationRecord
  include UniqueId
  belongs_to :apple
end
