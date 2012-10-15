class ContactNumber < ActiveRecord::Base
  PROVIDERS = ["Globe","Smart","Sun"]

  attr_accessible :number, :provider

  belongs_to :owner, polymorphic:true
end
