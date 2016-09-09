class CreateJoinTablePaperTag < ActiveRecord::Migration
  def change
    create_table :papers_tags, :id => false do |t|
      t.references :paper, index: true
      t.references :tag, index: true
    end
  end
end
