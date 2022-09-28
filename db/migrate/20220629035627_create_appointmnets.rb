class CreateAppointmnets < ActiveRecord::Migration[7.0]
  def change
    create_table :appointmnets do |t|
      t.string :name

      t.timestamps
    end
  end
end
