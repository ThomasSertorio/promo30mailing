class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  # Callbacks
  after_create :send_welcome_email

  # Associations
  has_many :restaurants

  def name
    email
  end

  private
  def send_welcome_email
    UserMailer.welcome(self).deliver_now
  end
end
