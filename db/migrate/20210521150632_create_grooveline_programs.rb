class CreateGroovelinePrograms < ActiveRecord::Migration[6.1]
  def up
    create_table(:grooveline_programs, if_not_exists: 'true')  do |t|
      t.string :name, null: false
      t.date :release_date, null: false
      t.timestamps
    end
  end

  def down
    drop_table(:grooveline_programs, if_exists: true)
  end
end
