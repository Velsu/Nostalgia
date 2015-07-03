class Post < ActiveRecord::Base
	acts_as_votable
	belongs_to :user
	belongs_to :category
	has_many :comments
	has_attached_file :image, styles: { medium: "700x500#", small: "350x250>" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
  validates :image, presence: true
  validates :title, presence: true
  validates :description, presence: true
end
