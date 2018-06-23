class CreateJavapracs < ActiveRecord::Migration[5.2]
  def change
    create_table :javapracs do |t|
      t.text :ques
      t.text :ans
      t.integer :point

      t.timestamps
    end
  end
end
