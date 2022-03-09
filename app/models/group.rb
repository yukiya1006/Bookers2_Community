class Group < ApplicationRecord
  has_many :group_users
  has_many :users, through: :group_users, dependent: :destroy
  belongs_to :user
  
  validates :name, presence: true
  validates :introduction, presence: true
  # attachment :image, destroy: false
end
