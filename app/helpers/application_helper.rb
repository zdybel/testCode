module ApplicationHelper

	def insurance
		insurance = ["Aetna", "Blue Cross Blue Shield", "Gold Star", "Medicare", "TLC", "Western Health", "Care Corp", "Taken Star", "PureCarePlus"].sort
	end

	def identities
		identities = ["Patient", "Doctor"]
	end

	def dayofweek
		dayofweek = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday", "Weekday", "Weekend", "Monday, Wednesday, Friday", "Tuesday, Thursday", "Monday, Tuesday, Wednesday", "Thursday, Friday"]
	end

	def timeofday
		timeofday = ["Morning", "Noon", "Afternoon", "Evening"]
	end

	def specialty
		specialty = ["Cardiology", "Physical Therapy", "Family Medicine", "Pediatrics", "Dermatology", "General Practitioner", "ENT (Ear, Nose and Throat)", "Gastroenterology", "Psychiatry", "Psychology", "Oncology", "Podiatry"].sort
	end

end
