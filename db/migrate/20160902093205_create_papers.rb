class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.text :url
      t.text :title
      t.text :authors
      t.text :journal
      t.text :abstract

      t.text :tags, array: true, default: []
      t.text :commentary

      t.timestamps null: false
    end
  end
end
