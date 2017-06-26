class CreateBoards < ActiveRecord::Migration
  def change
    create_table :boards do |t|
      
      t.string  "title"
      t.text  "content"
      t.string "writer"
      t.string "region"
      t.string "school"
      t.integer "total"
      t.integer "count"

      t.timestamps null: false
    end
  end
end
