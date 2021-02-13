class Content < ApplicationRecord

  belongs_to :user
  has_many :answers, dependent: :destroy

  has_rich_text :question
  has_rich_text :answer
  has_rich_text :explanation

  with_options numericality: { other_than: 1 } do
    validates :grade_id
    validates :subject_id
  end

  with_options presence: true do
    validates :category
    validates :question
    validates :answer
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :grade
  belongs_to :subject
  belongs_to :release

end
