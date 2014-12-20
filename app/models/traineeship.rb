class Traineeship < ActiveRecord::Base
	validates :ep_name,  presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :ep_email, presence: true,
                    format: { with: VALID_EMAIL_REGEX }
    validates :region,  presence: true
    validates :country,  presence: true   
    validates :lc, presence: true
    validates :tn_type, presence: true          
    validates :rate_lc,  presence: true, numericality: true
    validates :rate_tn, presence: true, numericality: true
    validates :lc_comments, presence: true
   	validates :tn_comments, presence: true
   	validates :rate_homelc, presence: true
   	validates :homelc_comments, presence: true 
end
