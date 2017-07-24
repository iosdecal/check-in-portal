class SwitchesController < ApplicationController
  def switch
    current_mode = Switch.first.can_checkin
    Switch.first.update_attributes(can_checkin: !current_mode)
    puts "checkin_mode: #{!current_mode}"
    redirect_to '/tapage'
  end
end
