class Student < ActiveRecord::Base

	def activate!
		self.active = !self.active
		self.save
	end

  def to_s
    self.first_name + " " + self.last_name
  end
end