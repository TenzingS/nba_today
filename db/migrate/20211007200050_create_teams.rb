class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :teamname
      t.string :city
      t.string :conference
      t.string :abbreviation

      t.timestamps
    end
  end
end
