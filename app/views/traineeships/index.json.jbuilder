json.array!(@traineeships) do |traineeship|
  json.extract! traineeship, :id, :start, :end, :name, :evaluation, :notes
  json.url traineeship_url(traineeship, format: :json)
end
