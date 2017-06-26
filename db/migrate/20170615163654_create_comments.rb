class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      
      t.integer "post_id"
      t.string "mention"
      t.string "writer"

      t.timestamps null: false
    end
  end
end
