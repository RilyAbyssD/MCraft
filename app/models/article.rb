class Article < ApplicationRecord
  belongs_to :user, optional: true
  validates :title, presence: true
  validates :body, presence: true
  mount_uploader :image, ImageUploader
end
