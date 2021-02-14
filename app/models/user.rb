class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true, length: { maximum: 30 } do
    validates :nickname, format: { with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :user_name, uniqueness: true, format: { with: /\A[a-zA-Z0-9]+\z/ }
  end
  validates :introduction, length: { maximum: 150 }

  has_many :contents
  has_many :answers, dependent: :destroy

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

end
