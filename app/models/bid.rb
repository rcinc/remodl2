class Bid < ActiveRecord::Base
  include PublicActivity::Model
  tracked

  belongs_to :project
  belongs_to :user
end
