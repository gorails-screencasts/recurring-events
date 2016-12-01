class Events::ExceptionsController < ApplicationController
  before_action :set_event

  def create
    if @exception = @event.event_exceptions.create(exception_params)
      flash.notice = "Exception added!"
      redirect_to events_path
    else
      flash.alert = "Unable to add exception"
      redirect_to @event
    end
  end

  private

    def set_event
      @event = Event.find(params[:event_id])
    end

    def exception_params
      params.require(:event_exception).permit(:time)
    end
end
