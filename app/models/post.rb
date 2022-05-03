class Post < ApplicationRecord
    validates_presence_of :title, :content
    has_rich_text :content
    has_many :comments, dependent: :destroy
    self.per_page = 5
    extend FriendlyId
    friendly_id :title, use: :slugged
end
