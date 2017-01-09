class CreateTestTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :test_templates do |t|
      t.string :first
      t.string :last

      t.timestamps
    end
  end
end
