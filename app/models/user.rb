class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  #after_create :send_welcome_email

  has_many :orders
  has_many :meals, foreign_key: "cook_id"

  mount_uploader :photo, PhotoUploader

  private

  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end

end
