class CreateRbs < ActiveRecord::Migration[5.2]
  def change
    create_table :rbs do |t|
      t.text :mb
      t.text :ms

      t.timestamps
    end
  end
end
