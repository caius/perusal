Hanami::Model.migration do
  change do
    create_table :feeds do
      primary_key :id

      column :uuid, String, null: false, unique: true
      column :url, String, null: false
      column :link, String, null: false
      column :metadata, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
