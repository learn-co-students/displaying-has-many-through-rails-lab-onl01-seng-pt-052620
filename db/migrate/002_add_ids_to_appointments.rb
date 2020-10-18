class AddIdsToAppointments < ActiveRecord::Migration
  def change
    add_column :appointments, :doctor_id, :interger
    add_column :appointments, :patient_id, :interger
  end 
end
