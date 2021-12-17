class CreatePlayerstats < ActiveRecord::Migration[6.1]
  def change
    create_table :playerstats do |t|
      t.belongs_to :player, null: false, foreign_key: true
      t.float :points
      t.float :rebounds
      t.float :assists
      t.float :steals
      t.float :blocks
      t.float :fg
      t.float :threept
      t.float :ft

      t.timestamps
    end
  end
end
