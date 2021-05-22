class CreateCategories < ActiveRecord::Migration[6.1]
  def up
    create_table(:categories, if_not_exists: 'true')  do |t|
      t.string :name, null: false

      t.timestamps
    end
  end

  def down
    drop_table(:categories, if_exists: true)
  end
end
