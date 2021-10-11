class AddTextToDocuments < ActiveRecord::Migration[5.2]
  def change
    add_column :documents, :text, :text
  end
end
