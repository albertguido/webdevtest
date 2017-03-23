class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :tournament_id
      t.string :team_name
      t.integer :user_id
      t.string :member_name
      t.string :member_phone
      t.string :gender, limit: 1

      t.timestamps null: false
    end
  end
end
