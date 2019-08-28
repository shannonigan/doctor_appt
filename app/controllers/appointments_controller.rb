class AppointmentsController < ApplicationController
  
    def index
      @appointments = current_user.appointments.all
    end
  
    def new
      @appointment = new_doctor_appointment_path
      
    end
  
    def create
      @appointment = @doctor.appointment.new(appointment_params)
      if @appointment.save
        redirect_to doctor_appointments_path(@doctor_id)
      else
        render :new
      end
    end
  
    def destroy
      @appointment = @doctor.appointments.find(params[:id])
      @appointment.destroy
      redirect_to doctor_appointments_path(@doctor)
    end
  
   private
    
     def appointment_params
       params.require(:appointment).permit(:date, :time, :symptom, :doctor)
     end
  end