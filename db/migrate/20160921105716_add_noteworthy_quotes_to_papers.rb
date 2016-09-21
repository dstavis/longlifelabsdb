class AddNoteworthyQuotesToPapers < ActiveRecord::Migration
  def change
    add_column :papers, :noteworthy_quotes, :text
  end
end
