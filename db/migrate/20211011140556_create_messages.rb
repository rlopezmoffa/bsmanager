class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.string :name
      t.string :surname
      t.string :email
      t.string :title
      t.text :text

      t.timestamps
    end
  end
end
