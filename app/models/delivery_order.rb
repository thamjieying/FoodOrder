class DeliveryOrder < ApplicationRecord
  validates_presence_of :order_id, :serving_datetime
  has_many :order_items

  def delivery_date
    self.serving_datetime.to_s[0..9]
  end




  def delivery_time
    time = self.serving_datetime.to_s[11..18]
    hour = time[0..1].to_i
    minutes = time[3..4].to_i
    range = ""
    # change to 12hour clock
    if hour > 12
      hour = hour-12
    end

    #convert the time to a range
    if minutes <= 30
      range = hour.to_s + ":00-" + hour.to_s + ":30"
    else
      range = hour.to_s + ":31-" + (hour+1).to_s + ":00"
    end

    #add AM and PM to the range time
    if (hour==11 && minutes<=30) || hour <11
      range = range + "AM"
    else
      range = range + "PM"
    end

    #return the range for the time
    return range
  end
end
