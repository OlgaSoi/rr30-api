class SourceProviderResource < JSONAPI::Resource
  attributes :name, :url, :address, :last_sync_at, :created_at,
             :updated_at, :active
end
