json.array!($meets) do |meet|
  json.extract! meet, :id, :athleteNum, :event1, :event2, :event3
  json.url meet_url(meet, format: :json)
end
