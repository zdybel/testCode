class RequestsController < ApplicationController
  def index
  end

  def show
    @test = "test text"
    @user = User.find(current_user.id)
    @user_fname = @user.fname 
    @user_identity = @user.identity
    @user_requests_length = @user.requests.length
    if @user_identity == 'Doctor'
     # @identity = 'it is a doctor'
      redirect_to openings_show_path
    else
      @identity = 'it is a patient'
    end
    if @user_requests_length === 0
      redirect_to requests_new_path
    end

  end

  def new
    @user = User.find(current_user.id)
    @user_id = @user.id
    @user_insurance = @user.insurance
    @request = Request.new
    @request.save
    @user.requests.push(@request)
  end

  def create
 
  end

  def edit
  end

  def update
       redirect_to requests_show_path
  end

  def delete
  end
end
    # @location_name = params[:location_name]
    # @location_street_address = params[:location_street_address]
    # @location_city= params[:location_city]
    # @location_photo_url= params[:location_photo_url]
    # @location_url= params[:location_url]
    # @location_postal_code = params[:location_postal_code]
    # @location_latitude = params[:location_latitude]
    # @location_longitude = params[:location_longitude]
    # @event = Event.new
    # @event.location_name = @location_name
    # @event.location_street_address = @location_street_address
    # @event.location_city = @location_city
    # @event.location_photo_url = @location_photo_url
    # @event.location_url = @location_url
    # @event.location_postal_code = @location_postal_code
    # @event.location_latitude = @location_latitude
    # @event.location_longitude = @location_longitude
    # @event.creator = current_user.id
    # @event.user_id = current_user.id
    # @event.save
    # current_user.events.push(@event)