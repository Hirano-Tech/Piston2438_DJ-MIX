class CreateMixmachineDjmixes < ActiveRecord::Migration[6.1]
  def up
    create_table(:mixmachine_djmixes, if_not_exists: 'true')  do |t|
      t.string :name, null: false
      t.string :title
      t.date :release_date, null: false
      t.timestamps
    end

  end

  def down
    drop_table(:mixmachine_djmixes, if_exists: true)
  end
end
