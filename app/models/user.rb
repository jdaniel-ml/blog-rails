class User < ApplicationRecord
  has_many :followers, foreing_key: "followed_id", class_name: "Relationship"
  has_many :following, foreing_key: "follower_id", class_name: "Relationship"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles
end
