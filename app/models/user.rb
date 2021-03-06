class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

 validates  :password, presence: true
 validates :nickname, presence: true
 validates :last_name, presence: true
 validates :first_name, presence: true
 validates :first_name_kana, presence: true
 validates :last_name_kana, presence: true
 validates :birth_wrap, presence: true
 validates :email, presence: true
 
 has_many :items
 has_many :comments
end
