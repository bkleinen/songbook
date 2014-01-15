json.array!(@songs) do |song|
  json.extract! song, :id, :name, :artist, :comment, :stars
  json.url song_url(song, format: :json)
end
