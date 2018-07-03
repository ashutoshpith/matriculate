class CreateJavaJps < ActiveRecord::Migration[5.2]
  def change
    create_table :java_jps do |t|
      t.text :heading
      t.text :ques
      t.text :ans
      t.text :input
      t.text :output
      t.integer :point

      t.timestamps
    end
  end
end
