class TicketController < ApplicationController
  def index
  end

  def new
  end

  def create
    @ticket = Ticket.new(ticket_params)
    authorize! :create, @ticket
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def ticket_params
    params.require(:ticket).permit(:description, :price, :event)
  end

end
