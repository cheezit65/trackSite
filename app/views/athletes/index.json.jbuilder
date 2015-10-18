json.array!($athletes) do |athlete|
  json.extract! athlete, :id, : athleteNum, :firstName, :lastName, :birthYear
  json.url athlete_url(athlete, format: :json)
end
