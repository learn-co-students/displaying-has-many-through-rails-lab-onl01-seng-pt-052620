class DoctorsController < ApplicationController

    def show
        @doctor = Doctor.find(params[:id])
    end
    
    def new
        @doctor = Doctor.new
    end

    def create
    end

    private

    def doctor_params
    end

end
