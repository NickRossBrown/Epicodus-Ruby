class RenameInstuctions < ActiveRecord::Migration[5.2]
  def change
    rename_table(instuctions, instructions)

  end
end
