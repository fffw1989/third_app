class CreateFreedoms < ActiveRecord::Migration[5.0]
  def change
    create_table :freedoms do |t|
      t.string :title
      t.text :number

      t.timestamps
    end
  end
end
