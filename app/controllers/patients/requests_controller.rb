class Patients::RequestsController < ApplicationController
      before_action :authenticate_patient!, only: [:new, :create, :show]

    def new
        @request = Request.new
    end
    
  def create
    @request = current_patient.requests.create(request_params)
    if @request.save
      redirect_to patient_path(current_patient)
    else
      render 'new'
    end
  end

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    @request.update_attributes(request_params)
    redirect_to patients_request_path(@request)
  end
  
  def destroy
    request = Request.find(params[:id])
    if request.confirmed == true
      opening = Opening.find(request.matched)
      opening.update_attributes(confirmed: false)
      request.delete
    else
      request.delete
    end
    redirect_to patient_path(current_patient)
  end
  
  def show
    @request = Request.find(params[:id])
    @same_openings = []
    offices = Office.where("insurance = ?", @request.patient.insurance)
    offices.each do |office|
        office.openings.each do |opening|
          if matching_attributes?(opening, @request)
            @same_openings << opening
          end
        end
    end
  end
  
  def choose_match
    request = Request.find(params[:request_id])
    @opening = Opening.find(params[:id])
    request.update_attributes(matched: @opening.id)
    redirect_to patients_request_path(request)
  end
  
  def delete_comfirmation
    request = Request.find(params[:request_id])
    request.update_attributes(matched: 0)
    redirect_to patients_request_path(request)
    
  end
  

  private
  
  def request_params
    params.require(:request).permit(:dayofweek, :timeofday, :specialty, :notes)
  end
  
  def matching_attributes?(opening, request)
    if (opening.timeofday == request.timeofday) && (opening.dayofweek == request.dayofweek) && (opening.specialty == request.specialty) && (opening.confirmed == false)
      return true
    else
      return false
    end
  end
  
end