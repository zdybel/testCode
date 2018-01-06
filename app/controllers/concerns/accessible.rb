module Accessible
  extend ActiveSupport::Concern
  included do
    before_action :check_user
  end

  protected
  def check_user
    if current_office
      flash.clear
      # if you have rails_admin. You can redirect anywhere really
      redirect_to(office_path(current_office)) && return
    elsif current_patient
      flash.clear
      # The authenticated root path can be defined in your routes.rb in: devise_scope :user do...
      redirect_to(patient_path(current_patient)) && return
    end
  end
end