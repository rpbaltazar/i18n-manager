Hanami::Model.migration do
  change do
    create_table :i18n_languages do
      primary_key :id

      column :language_name, String, null: false

      column :created_at, DateTime, null: false
      column :updated_at, DateTime, null: false
    end
  end
end
