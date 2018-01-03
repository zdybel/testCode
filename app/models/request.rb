class Request < ApplicationRecord
	validates :timeofday, presence: true
	validates :dayofweek, presence: true 
	validates :notes, presence: true
	validates :specialty, presence: true
	belongs_to :patient
	default_scope -> {order(created_at: :desc)}

end
