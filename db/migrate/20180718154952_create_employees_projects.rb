class CreateEmployeesProjects < ActiveRecord::Migration[5.2]
  def change
    create_table(:employees_projects) do |t|
      t.column(:employee_id, :int)
      t.column(:project_id, :int)

    end
  end
end
