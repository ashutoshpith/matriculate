class CreateJfs < ActiveRecord::Migration[5.2]
  def change
    create_table :jfs do |t|
      t.text :heading
      t.text :ques
      t.text :ans
      t.integer :point
      t.text :input
      t.text :output

      t.timestamps
    end
  end
end
