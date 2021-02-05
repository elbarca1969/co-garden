class Content < ApplicationRecord

  belongs_to :user

  has_rich_text :question
  has_rich_text :answer
  has_rich_text :explanation

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :grade
  belongs_to :subject
  belongs_to :release

end
