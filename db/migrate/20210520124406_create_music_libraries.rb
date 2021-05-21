class CreateMusicLibraries < ActiveRecord::Migration[6.1]
  def up
    create_table(:music_libraries, if_not_exists: 'true')  do |t|
      t.string :name, null: false
      t.string :category, null: false
      t.string :s3_key, null: false
      t.date :release_date, null: false

      t.timestamps
    end

    add_index :music_libraries, :s3_key, unique: true
  end

  def down
    drop_table :music_libraries, if_exists: true
  end
end
