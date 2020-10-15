class DoctorsController < ApplicationController
    def show
        @doctor = Doctor.find(params[:id])
        #@patient = @appointment.patient
    end 
end
