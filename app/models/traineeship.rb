class Traineeship < ActiveRecord::Base
	validates_presence_of :ep_name, :message => "Please enter your name.", on: :create
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates_presence_of :ep_email, message: "Please enter your email.", on: :create
  validates_format_of :ep_email,  with: VALID_EMAIL_REGEX, message: "Please enter a valid email.", on: :create
 validates_format_of :manager_email, allow_nil: true, with:  VALID_EMAIL_REGEX,  message: "Please enter a valid email for your manager or leave it blank.", on: :create
    validates_presence_of :region, message: "Please enter a region for your TN."
    validates_presence_of :country, message: "Please enter a country for your TN."
    validates_presence_of :lc, message: "Please enter an LC for your TN."
    validates_presence_of :tn_type, message: "Please enter GIP or GCDP for your TN."         
    validates_presence_of :rate_lc, message: "Please enter a number 1 through 10 for your host LC rating.", numericality: true
    validates_presence_of :rate_tn, message: "Please enter a number 1 through 10 for your TN rating.", numericality: true
    validates_presence_of :lc_comments,  message: "Please provide comments about your host LC.", on: :create
   	validates_presence_of :tn_comments, message: "Please provide comments about your TN.", on: :create
   	validates_presence_of :rate_homelc, message: "Please enter a number 1 through 10 for your home LC rating.", numericality: true
   	validates_presence_of :homelc_comments, message: "Please provide comments about your home LC", on: :create
end
