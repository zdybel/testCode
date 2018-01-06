class PatientsController < ApplicationController
    before_action :authenticate_patient!, only: [:show]
    def show
        @patient = Patient.find(params[:id])
    end
end
