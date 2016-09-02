class CreatePapers < ActiveRecord::Migration
  def change
    create_table :papers do |t|
      t.text :url
      t.text :title
      t.text :abstract

      t.text :commentary

      t.timestamps null: false
    end
  end
end
