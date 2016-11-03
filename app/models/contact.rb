class Contact < ActiveRecord::Base
	#validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  include ActiveModel::Model
  include ActiveModel::Conversion
  include ActiveModel::Validations

  attr_accessor :name, :email, :message, :phone, :companyname, :subject

 validates :name, 
 presence: true

 validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }


end
