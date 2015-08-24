class Profile < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  has_many :downvotes, dependent: :destroy
  belongs_to :user
  has_attached_file :attachment, styles: {
  thumb: '100x100>',
  square: '200x200#',
  medium: '300x300>'
}
validates_attachment_content_type :attachment, :content_type => /\Aimage\/.*\Z/

end
