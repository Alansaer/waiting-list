# For controlling views that are tied to the queue.
# Will display the queue
# And display the detailed user information page
class GuestlistsController < ApplicationController

  def index
    #@guestlist = User.where("id IN (?)", Guestlist.select(:user_id).order(:created_at))
    order = Guestlist.pluck(:user_id)
    @guestlist = User.find(order).index_by(&:id).slice(*order).values
  end

  def show
    @guestlist = User.find(params[:id])
  end

  def update
  end

end
