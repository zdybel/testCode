class OfficesController < ApplicationController
    before_action :authenticate_office!, only: [:show]
    def show
        @office = Office.find(params[:id])
    end
end
