class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
    @attendance = Attendance.new
  end

  def edit
  end

  def update
    @event = Event.find(params[:id])

    if @event.creator == current_user
      if @event.update(event_params)
        flash[:notice] = "Event successfully updated"
        redirect_to @event
      else
        flash.now[:alert] = "There is a problem updating the event"
        render :edit
      end
    else
      flash[:alert] = "You are not the creator of this event"
      redirect_to events_path
    end
  end

  def new
    @user = current_user
    @event = @user.events.build
  end

  def create
    @user = current_user
    @event = @user.events.build(event_params)

    if @event.save
      redirect_to @event
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find(params[:id])

    if @event.creator == current_user
      @event.destroy
      flash[:notice] = "Event has been destroyed"
    else
      flash[:alert] = "You cannot destroy this event"
    end

    respond_to do |format|
      format.turbo_stream { render turbo_stream: turbo_stream.remove("event_#{@event.id}") }
      format.html { redirect_to user_path(current_user) }
    end
  end

  private

  def event_params
    params.require(:event).permit(:name, :start_date, :location)
  end
end
