class AppointmentsController < ApplicationController
    def new
        @appointment = Appointment.new 
    end

    def show
        @appointment = Appointment.find(params[:id])
     end

    # def create
    #     @appointment = Appointment.new(appointment_params) 
    #     if @appointment.save 
    #         redirect_to appointment_path(@appointment)
    #     else 
    #         render :new 
    #     end 
    # end 
    
    # def update
    #    @appointment = Appointment.find(params[:id])
    #    if @Appointment.update(appointment_params) 
    #     redirect_to appointment_path(@appointment)
    #    else 
    #         render :edit 
    #    end 
    # end


private 

    def appointment_params
        params.require(:appointment).permit(:appointment_datetime, :doctor_id, :patient_id) 
    end 
end 