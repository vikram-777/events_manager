class ParticipationsController < ApplicationController
	

	def create
		@event=Event.find(params[:event_id])
		@participation=@event.participations.create(params[:participation])
		@participation.user = current_user
		@participation.save
		
		redirect_to events_index_path, :notice => "Successfully Registered!"
		
		
	end


	def destroy
		@participation=Participation.find(params[:id])
		@participation.destroy
		redirect_to userevents_path, :notice => "Successfully De-registered"
	end	












end
