class AddDoctorAndSymptomToAppointments < ActiveRecord::Migration[6.0]
  def change
    add_column :appointments, :doctor, :string
    add_column :appointments, :symptom, :string
  end
end
