class Profile < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  has_many :downvotes, dependent: :destroy
  belongs_to :user
end
