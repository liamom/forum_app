json.array!(@test_scaffolds) do |test_scaffold|
  json.extract! test_scaffold, :id, :name, :email, :passoword
  json.url test_scaffold_url(test_scaffold, format: :json)
end
