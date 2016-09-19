class CreateCorrections < ActiveRecord::Migration
  def change
    create_table :corrections do |t|
      t.integer :user_id
      t.integer :answer_id
      t.integer :question_id
      t.text :text

      t.timestamps null: false
    end
  end
end
