class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.integer :pmid
      t.text :url
      t.string :title
      t.string :authors
      t.string :journal
      t.text :abstract

      t.text :commentary

      t.timestamps null: false
    end
  end
end
