class AppointmentsController < ApplicationController
    def index
       @appointments = Appointment.all 
    end

    def new
        @appointment = Appointment.new 
    end

    def create
        @appointment = Appointment.new(appointment_params) 
        if @appointment.save 
            redirect_to appointment_path(@appointment)
        else 
            render :new 
        end 
    end 
    
    def update
       @appointment = Appointment.find(params[:id])
       if @Appointment.update(appointment_params) 
            redirect_to appointment_path(@appointment)
       else 
            render :edit 
       end 
    end

    def show
       @appointment = Appointment.find(params[:id])
    end

private 

    def appointment_params
        params.require(:appointment).permit(appointment_datatime:[:doctor_id, :patient_id]) 
    end 
end 