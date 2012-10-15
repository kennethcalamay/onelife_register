class Participant < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me, :facilitator_id
  # attr_accessible :title, :body
  
  belongs_to :facilitator, :class_name => :Volunteer

  def display_name
    tmp = "#{lastname}, #{firstname}"
    tmp << " " << middlename.first << "." if middlename
  end
end
