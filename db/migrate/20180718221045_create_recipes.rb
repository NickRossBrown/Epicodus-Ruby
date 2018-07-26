class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table(:recipes) do |t|
      t.column(:name, :string)
      t.column(:ingredient_id, :integer)
      t.column(:instruction_id, :integer)
      t.column(:rating, :integer)
      t.column(:tag, :string)

    end

  end
end
