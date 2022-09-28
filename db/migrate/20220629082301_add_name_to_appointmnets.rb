class AddNameToAppointmnets < ActiveRecord::Migration[7.0]
  def change
    add_column :appointmnets, :doctor_name, :string
    add_column :appointmnets, :patient_name, :string
  end
end
