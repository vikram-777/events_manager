class Event < ActiveRecord::Base

	belongs_to :author, :class_name =>"User"
	has_many :participations, :dependent => :destroy
	


end
