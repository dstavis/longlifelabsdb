class AddPersonalNotesAndPublishedToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :personal_notes, :text
    add_column :papers, :published, :boolean, default: false
  end
end
