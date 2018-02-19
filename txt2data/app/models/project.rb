class Project < ApplicationRecord

	validates :title, presence: true
	
	has_one :datum
	has_one :form
	has_many :tests
	
	belongs_to :user


end
