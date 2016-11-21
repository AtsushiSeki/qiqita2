class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title, null: false, default: ""
      t.text :content
      t.references :user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
