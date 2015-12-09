class CreatePresents < ActiveRecord::Migration
  def change
    create_table :presents do |t|
      t.string :recipient
      t.text :contents
      t.text :image

      t.timestamps null: false
    end
  end
end
