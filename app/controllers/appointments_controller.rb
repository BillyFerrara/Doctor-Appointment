class AppointmentsController < ApplicationController
    def index
        @appointments = Appointment.all
    end


    def new
        @appointments = Appointment.new 

    end


    def create
        @appointment = Appointment.create(app_params)
        redirect appointment_path(@appointment)
    end


    def show
        @appointment = Appointment.find(params[:id])

    end

    def update

    end

    def edit 
        @appointment = Appointment.find(params[:id])
    end 


    def delete

    end

    def app_params
        params.require(:appointment).permit()
    end
end 
