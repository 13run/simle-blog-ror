class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 300 }
  validates :text, presence: true
end
