class CreateRegisters < ActiveRecord::Migration
  def change
    create_table :registers do |t|
      
      t.integer "post_id"
      t.integer "order"
      t.string "registor"

      t.timestamps null: false
    end
  end
end
