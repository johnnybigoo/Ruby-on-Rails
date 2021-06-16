# Task
# Your team is working on a project for a retail chain which keeps their stores' weekly open hours listings as an array of data. The data is in the following format:

# open_hours = [
#   {
#     :day => "Monday",
#     :open => "8:00 AM",
#     :close => "5:00 PM"
#   },
#   {
#     :day => "Tuesday",
#     :open => "8:00 AM",
#     :close => "5:00 PM"
#   },
#   {
#     :day => "Wednesday",
#     :open => "8:00 AM",
#     :close => "6:00 PM"
#   },
#   {
#     :day => "Thursday",
#     :open => "8:00 AM",
#     :close => "5:00 PM"
#   },
#   {
#     :day => "Friday",
#     :open => "8:00 AM",
#     :close => "5:00 PM"
#   },
#   {
#     :day => "Saturday",
#     :open => "8:00 AM",
#     :close => "4:00 PM"
#   }
# ]
# However, the company's website needs the data to be transformed to a grouped format for displaying to visitors. The grouped format is as follows:

# grouped_open_hours = [ 
#   { 
#     :days => "Monday-Tuesday", 
#     :open => "8:00 AM", 
#     :close => "5:00 PM" 
#   },
#   { 
#     :days => "Wednesday", 
#     :open => "8:00 AM", 
#     :close => "6:00 PM" 
#   },
#   { 
#     :days => "Thursday-Friday", 
#     :open => "8:00 AM", 
#     :close => "5:00 PM" 
#   },
#   { 
#     :days => "Saturday", 
#     :open => "8:00 AM", 
#     :close => "4:00 PM" 
#   },
#   {
#     :days => "Sunday",
#     :open => nil,
#     :close => nil
#   }
# ]
# In the output above, any consecutive days sharing the same open and close times have been compressed into the same hash. Whenever consecutive days sharing open and close times are encountered, the first and last day in the range are concatenated with a hyphen for the :day key.

# Your task is to write code to perform the transformation. The function you'll complete is group_open_hours(open_hours). The function should return the transformed hash array in the above format.

# The output array should be in order of the days of the week. Consider Monday as the beginning of the week and Sunday as the end. No range that bridges the gap between Sunday-Monday should be created (but a range from Monday-Sunday is valid whenever the entire week has the same open/closed hours or the input is empty.

# As shown above, any missing days of the week should be added to the returned array as hashes with :open: nil and :close: nil entries. When the missing dates consist of consecutive ranges, they should use the same hyphenated grouped :days key format as open days would be.

# The open_hours parameter will always be well-formed but may be empty and unsorted. There will never be more than 7 hashes in the array, and each hash is guaranteed to have only :day, :open and :close keys present with string values formatted as in the structure shown above. All day keys are guaranteed to be unique in open_hours and correctly capitalized, valid days of the week.

# Please do not mutate the open_hours parameter.
open_hours = [
  {
    :day => "Monday",
    :open => "8:00 AM",
    :close => "5:00 PM"
  },
  {
    :day => "Tuesday",
    :open => "8:00 AM",
    :close => "5:00 PM"
  },
  {
    :day => "Wednesday",
    :open => "8:00 AM",
    :close => "6:00 PM"
  },
  {
    :day => "Thursday",
    :open => "8:00 AM",
    :close => "5:00 PM"
  },
  {
    :day => "Friday",
    :open => "8:00 AM",
    :close => "5:00 PM"
  },
  {
    :day => "Saturday",
    :open => "8:00 AM",
    :close => "4:00 PM"
  }
]

WEEK_DAYS = {
  "Monday" => 1, 
  "Tuesday" => 2, 
  "Wednesday" => 3,
  "Thursday" => 4,
  "Friday" => 5,
  "Saturday" => 6,
  "Sunday" => 7
}.freeze

def group_open_hours(open_hours)
  transformed_open_hours = add_week_day_and_unique_hour(open_hours)
  missing_days_arr = missing_days(transformed_open_hours)
  
  grouped = transformed_open_hours.concat(missing_days_arr).sort_by { |h| h[:week_day]}.group_by { |h| h[:unique_hour]}
  generate_display_data(grouped)                                                   
end

def add_week_day_and_unique_hour(open_hours)
  open_hours.map { |open_day| open_day.merge!({:week_day => WEEK_DAYS[open_day[:day]], :unique_hour => "#{open_day[:open]}#{open_day[:close]}"}) }
end

def missing_days(transformed_open_hours)
  aux_week_day = WEEK_DAYS.dup
  transformed_open_hours.each { |open_day| aux_week_day.delete_if { |k,v| k == open_day[:day] } } 
  maped_missing = aux_week_day.map { |k, v| {:day => k, :open => nil, :close => nil, :week_day => v, :unique_hour => nil } }
end


def hifenize_data(temp)
  temp.sort_by { |h| h[:week_day] }.each do |open_group|
    if WEEK_DAYS[open_group[:day]] != open_group[:week_day]
      open_group[:days] = "#{open_group[:day]}-#{WEEK_DAYS.invert[open_group[:week_day].to_i]}" 
    else
      open_group[:days] = open_group[:day]
    end
  end
end

def remove_unnecessary_keys(hifenize_data)
  hifenize_data.map { |open_day| open_day.reject! { |k,v| k == :unique_hour || k == :week_day || k == :day } }
end

def generate_display_data(grouped)
  temp = []
  grouped.each do |key, value|
    temp << value[0]
    value[1..-1].each_with_index do |h, index| 
      if temp.last[:week_day] == (h[:week_day] - 1)
        temp.last[:week_day] = h[:week_day]
      else
        temp << h
      end
    end
  end

  hifenize_data(temp).yield_self { |hifenize_data| remove_unnecessary_keys(hifenize_data) }
end

group_open_hours(open_hours)