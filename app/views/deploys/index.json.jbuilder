json.array!(@deploys) do |deploy|
  json.extract! deploy, :id, :tag, :create, :migration
  json.url deploy_url(deploy, format: :json)
end
