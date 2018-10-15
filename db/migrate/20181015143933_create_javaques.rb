class CreateJavaques < ActiveRecord::Migration[5.2]
  def change
    create_table :javaques do |t|
      t.string :heading
      t.string :question
      t.string :answer
      t.string :input
      t.string :output
      t.integer :point

      t.timestamps
    end
  end
end
