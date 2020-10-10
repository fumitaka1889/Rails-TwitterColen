ActiveRecord::Schema.define(version: 2020_10_06_063130) do
  enable_extension "plpgsql"
  create_table "blogs", force: :cascade do |t|
    t.text "content"
  end
end
