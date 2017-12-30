Hanami::Model.migration do
  change do
    create_table :posts do
      primary_key :id
      foreign_key :feed_id, :feeds, on_delete: :cascade, null: false

      column :uuid, String, null: false, unique: true
      column :title, String, null: false
      column :giud, String, null: false
      column :link, String, null: false
      column :content, String, text: true, null: false

      column :created_at, DateTime, null: false
      column :published_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
