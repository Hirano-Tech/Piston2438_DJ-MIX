class CreateGroovelinePrograms < ActiveRecord::Migration[6.1]
  def up
    create_table(:grooveline_programs, if_not_exists: 'true')  do |t|
      t.string :name, null: false
      t.string :s3_key, null: false
      t.date :release_date, null: false
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end

    add_index :grooveline_programs, :s3_key, unique: true
  end

  def down
    drop_table(:grooveline_programs, if_exists: true)
  end
end
