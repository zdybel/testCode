class Offices::OpeningsController < ApplicationController
      before_action :authenticate_office!, only: [:new, :create, :show]

  def new
    @opening = Opening.new
  end

  def create
    @opening = current_office.openings.create(opening_params)
    if @opening.save
      redirect_to office_path(current_office)
    else
      render 'new'
    end
  end

  def edit
    @opening = Opening.find(params[:id])
  end

  def update
    @opening = Opening.find(params[:id])
    @opening.update_attributes(opening_params)
    redirect_to offices_opening_path(@opening)
  end

  def destroy
    @opening = Opening.find(params[:id])
    if @opening.confirmed == true
      request = Request.find_by(matched: @opening.id, confirmed: true)
      request.update_attributes(confirmed: false)
      request.update_attributes(matched: 0)
      @opening.delete
    else
      @opening.delete
    end
    redirect_to office_path(current_office)
  end
  
  def show
    @opening = Opening.find(params[:id])
    @matched_patient_requests = Request.where("matched = ?", @opening.id)
  end
  
  def confirm_request
    @request = Request.find(params[:id])
    @opening = Opening.find(params[:opening_id])
    @opening.update_attributes(confirmed: true)
    @request.update_attributes(confirmed: true)
    redirect_to offices_opening_path(@opening)
  end
  
  private
  
  def opening_params
    params.require(:opening).permit(:dayofweek, :timeofday, :specialty, :notes)
  end
end

