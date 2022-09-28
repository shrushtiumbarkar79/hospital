class AddDoctorRefToAppointmnet < ActiveRecord::Migration[7.0]
  def change
    add_reference :appointmnets, :doctor, null: false, foreign_key: true
  end
end
