class RemoveTextFromDocuments < ActiveRecord::Migration[5.2]
  def change
    remove_column :documents, :text, :text
  end
end
