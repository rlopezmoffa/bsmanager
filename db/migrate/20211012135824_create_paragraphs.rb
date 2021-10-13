class CreateParagraphs < ActiveRecord::Migration[5.2]
  def change
    create_table :paragraphs do |t|
      t.string :title
      t.text :text
      t.integer :document_id

      t.timestamps
    end
  end
end
