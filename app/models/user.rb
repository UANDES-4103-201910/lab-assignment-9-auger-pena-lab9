class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :omniauthable, omniauth_providers: %i[facebook] 

  	has_many :user_tickets	
	has_many :tickets, :through => :user_tickets

	validates :email, presence: true, format: {with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/}, uniqueness: true

	validates :phone, length: {minimum: 9, maximum: 12}, allow_blank: true
  	validates :password, format: {with: /\A[a-zA-Z0-9\.]{8,12}\z/ , message: "Password must be between 8 to 12 alphanumeric characters"}

  def admin?
      if self.email == "lrpena@miuandes.cl"
        true
      else
        false
      end
  end 
  # Digamos que todos los usuarios registrados estan en condicion de usuario
  def user?
        true
  end 


end
