class AttendancesController < ApplicationController
  def create
    @event = Event.find(params[:attendance][:event_id])
    @attendance = @event.attendances.build(attendee: current_user)

    if @attendance.save
      flash[:notice] = "You are now attending #{@event.name}"
      redirect_to @event
    else
      flash[:notice] = "There was a problem joining the event"
      redirect_to @event
    end
  end

  def destroy
    @attendance = Attendance.find(params[:id])

    if @attendance.destroy
      flash[:notice] = "You have succesfully left the event"
    else
      flash[:alert] = "There was a problem leaving the event"
    end

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove("attendance_#{@attendance.id}") }
      format.html { redirect_to user_path(current_user) }
    end
  end
end
