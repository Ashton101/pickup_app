class CreatePickups < ActiveRecord::Migration
  def change
    create_table :pickups do |t|
      t.datetime :when
      t.string :who
      t.string :where
      t.string :size
      t.boolean :express

      t.timestamps
    end
  end
end
