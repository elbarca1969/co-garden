class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :content

  validates :comment_content, presence: true
end
