class CreateHeadlines < ActiveRecord::Migration[6.1]
  def change
    create_table :headlines do |t|
      t.string :news

      t.timestamps
    end
  end
end
