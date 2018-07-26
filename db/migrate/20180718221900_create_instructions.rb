class CreateInstructions < ActiveRecord::Migration[5.2]
  def change
    create_table(:instuctions) do |t|
      t.column(:step, :string)

    end
  end
end
