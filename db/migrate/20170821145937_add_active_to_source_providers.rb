class AddActiveToSourceProviders < ActiveRecord::Migration[5.1]
  def change
    add_column :source_providers, :active, :boolean, :null => false, :default => true
  end
end
