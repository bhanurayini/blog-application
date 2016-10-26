class User < ApplicationRecord
  rolify 

  after_create :assign_default_role

  def assign_default_role
    self.add_role(:newuser) if self.roles.blank?
  end
  has_many :posts, dependent: :destroy 
  has_many :comments, dependent: :destroy 
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :user_name, presence: true
  validates :password, presence: true
end
