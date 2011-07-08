class EventsController < ApplicationController
  def new
		@event = Event.new		
	end

	def show
		@event=Event.find(params[:id])
	end		
	
	def index
		if current_user
			@events= Event.all
		else
			redirect_to root_url, :notice=> "you need to be logged in to view this page"
		end		
	end
	
	def create
		@event=Event.new(params[:event])
		@event.author = current_user
		
		if @event.save
			redirect_to events_index_path, :notice => "If you would like to register yourself as a participant for the event you just created, click on the 'Register' link 																										on the event details page"
		else
			render "new"	
		end
	end
	

	
	def diff_user
		@user=User.find(params[:id])
		@participations=@user.participations
	end

	def all_seminars
		@events=Event.all
	end
	
	def all_lectures
		@events=Event.all
	end
	
	def all_conferences
		@events=Event.all
	end
	
		
	def destroy
		@event=Event.find(params[:id])
		if @event.author==current_user 
			@event.destroy
			redirect_to events_index_path
		else 
			redirect_to (events_index_path, 			:notice => "you are not the author of this event")
		end			
	end
	
	def userevents
		@user=current_user
		@participations=@user.participations
	end	

	def user_seminars
		@user=current_user
		@participations=@user.participations
	end	

	def user_conferences
		@user=current_user
		@participations=@user.participations
	end	

	def user_lectures
		@user=current_user
		@participations=@user.participations
	end	
	
	def diff_seminars
		@user=User.find(params[:id])
		@participations=@user.participations
	end

	
	def diff_lectures
		@user=User.find(params[:id])
		@participations=@user.participations
	end
	
	
	def diff_conferences
		@user=User.find(params[:id])
		@participations=@user.participations
	end

end

