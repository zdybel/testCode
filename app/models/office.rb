class Office < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validates :office_name, presence: true
  validates :insurance, presence: true
  
  has_many :openings, dependent: :destroy
end
