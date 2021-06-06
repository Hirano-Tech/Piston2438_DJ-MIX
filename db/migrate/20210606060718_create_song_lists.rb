class CreateSongLists < ActiveRecord::Migration[6.1]
  def up
    create_table :song_lists, if_not_exists: 'true' do |t|
      t.string :artist, null: false
      t.references :mixmachine_djmix, foreign_key: true
      t.timestamps
    end
  end

  def down
    drop_table :song_lists, if_exists: true
  end
end
