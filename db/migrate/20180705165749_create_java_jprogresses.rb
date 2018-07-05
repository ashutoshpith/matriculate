class CreateJavaJprogresses < ActiveRecord::Migration[5.2]
  def change
    create_table :java_jprogresses do |t|
      t.text :heading
      t.text :ques
      t.text :ans
      t.integer :point

      t.timestamps
    end
  end
end
