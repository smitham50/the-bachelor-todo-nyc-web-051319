require "pry"

def get_first_name_of_season_winner(data, season)
  data[season].each do |contestant_stats|
    if contestant_stats["status"] == "Winner"
      name_array = contestant_stats["name"].split(" ")
      return name_array[0]
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |stats|
    if stats["occupation"] == occupation
      return stats["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  hometown_count = 0
  data.each do |season, contestants|
    contestants.each do |stats|
      if stats["hometown"] == hometown
        hometown_count += 1
      end
    end
  end
  hometown_count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |stats|
      if stats["hometown"] == hometown
        return stats["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  data[season].each do |contestant_stats|
    age_array << contestant_stats["age"].to_f
  end
  (age_array.sum/age_array.length.to_f).round
end
