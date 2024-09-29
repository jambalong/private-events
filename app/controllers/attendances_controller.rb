class AttendancesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @attendance = @event.attendances.build(attendee: current_user)

    if @attendance.save
      flash[:notice] = "You are now attending #{@event.name}"
      redirect_to @event
    else
      flash[:notice] = "There was a problem joining the event"
      render "events/show"
    end
  end
end
