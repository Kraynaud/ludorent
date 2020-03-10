class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.string :name
      t.text :description
      t.integer :age_limit
      t.integer :number_players
      t.integer :duration
      t.integer :price_per_day
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
