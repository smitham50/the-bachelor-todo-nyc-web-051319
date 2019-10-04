require "pry"

def get_first_name_of_season_winner(data, season)
  winner = nil
  data.each do |seasons, contestants|
    if seasons == season
      winner = contestants.find {|contestant| contestant["status"] == "Winner"}["name"].split(" ")[0]
    end
  end
  winner
end
 
def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |contestants|
      if contestants["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_total = 0
  contestant_total = data[season].length
  data[season].each do |contestants|
    age_total += contestants["age"].to_i
  end
  (age_total/contestant_total.to_f).round(0)
end
