# frozen_string_literal: false

# gem httparty required
# gem install httparty

# success tested codes: 83300, 40773, 81649, 82807, 73343, 62329

require 'httparty'

def api_call_get_coors_from_zipcode(zipcode)
  url = "https://api.zippopotam.us/mx/#{zipcode}"

  response = HTTParty.get(url)
  return nil unless response.code == 200

  response = JSON.parse(response.body, symbolize_names: true)
  return nil if response.empty?

  latitude = response[:places][0][:latitude]
  longitude = response[:places][0][:longitude]

  { latitude: latitude, longitude: longitude }
end

def api_call_get_raw_wind_direction_from_coors(latitude:, longitude:)
  url = 'https://www.7timer.info/bin/astro.php?lon=%s&lat=%s&product=meteo&unit=metric&output=json'
  url = format(url, longitude, latitude)
  response = HTTParty.get(url)
  return nil unless response.code == 200

  response = JSON.parse(response, symbolize_names: true)

  response[:dataseries][0][:wind10m][:direction]
end

def process_wind_direction(raw_wind_direction)
  result = ''
  result = 'North' if raw_wind_direction.include? 'N'
  result = 'South' if raw_wind_direction.include? 'S'

  result << ' East' if raw_wind_direction.include? 'E'
  result << ' West' if raw_wind_direction.include? 'W'

  result = raw_wind_direction if result.empty?
  result.strip
end

# Programm execution

begin
  error = false

  print 'Enter a zipcode from México and see the wind direction in the area: '
  zipcode = gets.chomp

  location_coors = api_call_get_coors_from_zipcode(zipcode)
  error = true if location_coors.nil?

  unless error
    raw_wind_direction = api_call_get_raw_wind_direction_from_coors(**location_coors)

    error = true if raw_wind_direction.nil?

    unless error
      wind_direction = process_wind_direction(raw_wind_direction)
      puts "Wind direction for zipcode '#{zipcode}' is #{wind_direction} (#{raw_wind_direction})"
    end
  end

  puts "Unable to find data for zipcode '#{zipcode}', remember to enter a mexican code" if error
rescue StandardError
  puts 'An unexpected error has ocurred'
end
