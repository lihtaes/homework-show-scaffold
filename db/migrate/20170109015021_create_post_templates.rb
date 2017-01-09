class CreatePostTemplates < ActiveRecord::Migration[5.0]
  def change
    create_table :post_templates do |t|
      t.string :new_thing
      t.string :other_thing
      t.text :another_thing

      t.timestamps
    end
  end
end
