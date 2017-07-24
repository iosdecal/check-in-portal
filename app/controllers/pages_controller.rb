class PagesController < ApplicationController
  def welcome
    if Switch.first.can_checkin
      redirect_to '/checkins/new'
    end
  end

  def my_checkins
  end

  def login
  end

  def tapage
  end
end