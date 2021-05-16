class CreateMusics < ActiveRecord::Migration[6.1]
  def up
    create_table(:musics, if_not_exists: 'true')  do |t|
      t.string :name, null: false
      t.string :s3_key, null: false
      t.date :release_date, null: false
      t.timestamps
    end
  end

  def down
    drop_table :musics, if_exists: true
  end
end
