class PaymentsController < ApplicationController
  def index
    user = Current.user
    if user.update_attribute(:points, user.points + 100)
      flash[:success] = "You have successfully bought 100 points"
    end
  end
end
