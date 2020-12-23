class Article < ApplicationRecord
  validates :title, presence: true, length: { maximum: 300, minimum: 3}
  validates :text, presence: true, length: { minimum: 3}
end
