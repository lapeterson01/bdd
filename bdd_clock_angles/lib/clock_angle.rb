require('pry')

def clock_angle(time)
    time = time.split(':')
    hour = time[0].to_i()
    if hour.eql?(12)
        hour = 0
    end
    minute = time[1].to_i()
    hour = (hour + (minute.to_f() / 60))
    hour_degree = (hour * 30).to_i()
    minute_degree = minute * 6
    if (minute_degree <= 180 && hour_degree <= 180) || (minute_degree > 180 && hour_degree > 180)
        return degree = (minute_degree - hour_degree).abs
    elsif minute_degree > 180 && hour_degree <= 180
        minute_degree = 360 - minute_degree
        return degree = minute_degree + hour_degree
    elsif hour_degree > 180 && minute_degree <= 180
        hour_degree = 360 - hour_degree
        return degree = hour_degree + minute_degree
    end
end