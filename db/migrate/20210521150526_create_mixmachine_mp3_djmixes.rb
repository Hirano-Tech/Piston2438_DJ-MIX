class CreateMixmachineMp3Djmixes < ActiveRecord::Migration[6.1]
  def up
    create_table(:mixmachine_mp3_djmixes, if_not_exists: 'true')  do |t|
      t.string :name, null: false
      t.string :title
      t.string :s3_key, null: false
      t.date :release_date, null: false
      t.references :category, null: false, foreign_key: true

      t.timestamps
    end

    add_index :mixmachine_mp3_djmixes, :s3_key, unique: true
  end

  def down
    drop_table(:mixmachine_mp3_djmixes, if_exists: true)
  end
end
