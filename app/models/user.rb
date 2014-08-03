class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  #set this up lecture 26
  validates :name, presence: true

  #here we want to say that a user can have multiple listings
  #dependent says that if the user is gone, so are the listings
  has_many :listings, dependent: :destroy
end
