class Project < ActiveRecord::Base
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }
  
  belongs_to :user
  has_many :bids
  has_many :reviews
  has_many :comments

  scope :search, ->(term) { where("Title  LIKE ? ", "%#{term}%") }


end
