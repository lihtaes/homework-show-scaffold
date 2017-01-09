class CreateFinalTests < ActiveRecord::Migration[5.0]
  def change
    create_table :final_tests do |t|
      t.string :this
      t.string :that

      t.timestamps
    end
  end
end
