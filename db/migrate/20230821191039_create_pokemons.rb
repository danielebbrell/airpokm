class CreatePokemons < ActiveRecord::Migration[7.0]
  def change
    create_table :pokemons do |t|
      t.name :string
      t.description :text
      t.timestamps
      t.references :user, foreign_key: true
    end
  end
end
