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

  has_many :relationships
  has_many :followings, through: :relationships, source: :follow
  has_many :reverse_of_relationships, class_name: 'Relationship', foreign_key: 'follow_id'
  has_many :followers, through: :reverse_of_relationships, source: :user

  def follow(other_user)
    unless self == other_user
      self.relationships.find_or_create_by(follow_id: other_user.id)
    end
  end

  def unfollow(other_user)
    relationship = self.relationships.find_by(follow_id: other_user.id)
    relationship.destroy if relationship
  end

  def following?(other_user)
    self.followings.include?(other_user)
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :prefecture

end
