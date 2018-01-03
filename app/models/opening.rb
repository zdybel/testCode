class Opening < ApplicationRecord
	validates :timeofday, presence: true
	validates :dayofweek, presence: true
	validates :specialty, presence: true
	validates :notes, presence: true 
	belongs_to :office
	default_scope -> {order(created_at: :desc)}
	

end
