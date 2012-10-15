class Volunteer < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :email, :password, :password_confirmation, :remember_me,
    :firstname, :middlename, :lastname, :nickname, :birthdate, :gender,
    :contact_numbers_attributes, :part_of_a_dgroup, :leads_a_dgroup,
    :dgroup_leader_id, :address, :referrer_id, :hobby, :most_important_thing
  # attr_accessible :title, :body
  
  has_many :handles, class_name: Participant.name, foreign_key: 'facilitator_id', dependent: :nullify
  has_many :committees
  has_many :contact_numbers, as: 'owner',  dependent: :delete_all
  accepts_nested_attributes_for :contact_numbers, allow_destroy: true

  belongs_to :referrer
  belongs_to :dgroup_leader, class_name: Volunteer.name, foreign_key: 'dgroup_leader_id'

  scope :dgroup_leaders, where(leads_a_dgroup: true)

  def self.dgroup_leader_options
    dgroup_leaders.map{ |v| [v.display_name, v.id] }
  end

  def display_name
    tmp = "#{lastname}, #{firstname}"
    tmp << ' ' << middlename.first << '.' if middlename
  end
end
