class Project < ActiveRecord::Base
  include PublicActivity::Model
  tracked owner: ->(controller, model) { controller && controller.current_user }

  belongs_to :user
  has_many :bids
  has_many :reviews
  has_many :comments

  scope :search, ->(term) { where("Title  LIKE ? ", "%#{term}%") }

  has_attached_file :main, styles: {
  thumb: '100x100>',
  square: '200x200#',
  medium: '300x300>'
}
validates_attachment_content_type :main, :content_type => /\Aimage\/.*\Z/

end
