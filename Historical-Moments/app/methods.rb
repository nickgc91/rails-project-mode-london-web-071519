def most_events 
    Actor.all.inject {|acc, act| acc.locations.count > act.locations.count ? acc.name : act.name }
end 

def Event.by_period(year) #find all works within a 20-year time period; can i do this with .map? 
    period = []
    Event.all.each do |event| 
        if event.event_date.year < year + 10 && event.event_date.year > year - 10
            period << event.name 
        end 
    end 
    period 
end 


