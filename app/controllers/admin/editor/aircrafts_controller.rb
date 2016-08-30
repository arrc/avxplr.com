class Admin::Editor::AircraftsController < ApplicationController
  layout "admin"
  before_action :set_aircraft, only: [:show, :edit, :update, :destroy]

  def index
    if params[:search]
      @aircrafts = Aircraft.where("model ILIKE ?", "%#{params[:search]}%").order('created_at DESC')
    else
      @aircrafts = Aircraft.all.order('created_at DESC')
    end
  end

  def show
    #
  end

  def new
    @aircraft = Aircraft.new
  end


  def edit
  end

  def create
    @aircraft = Aircraft.new(aircraft_params)
    if @aircraft.save
      redirect_to admin_editor_aircraft_path(@aircraft), notice: 'Aircraft was successfully created.'
    end
  end

  def update
    if @aircraft.update(aircraft_params)
      redirect_to admin_editor_aircraft_path(@aircraft), notice: 'aircraft was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @aircraft.destroy
      redirect_to admin_editor_aircrafts_path, notice: "Aircraft was deleted successfully."
    end
  end

  private

    def set_aircraft
      # pry.binding
      @aircraft = Aircraft.find(params[:id])
    end

    def aircraft_params
      params.require(:aircraft).permit(
        :is_public,
        :model, :description, :year, :maiden_flight, :production_status_cd, :national_origin_cd, :category_id,
        :crew, :passengers, :bootspace,
        :length, :height, :wing_span, :wing_area,
        :gross_weight, :empty_weight, :max_takeoff_weight, :max_landing_weight, :max_payload, :full_fuel_payload,
        :power_output, :thrust,
        :max_cruise_speed, :stall_speed, :range, :service_ceiling, :max_climb_rate, :max_speed_limit, :takeoff_distance, :takeoff_ground_roll, :landing_distance, :landing_ground_roll,
        :image_front, :image_back, :image_left, :image_right, :image_top, :image_takeoff, :image_airborne, :image_landing,
        :remote_image_front_url, :remote_image_back_url, :remote_image_left_url, :remote_image_right_url, :remote_image_top_url, :remote_image_takeoff_url, :remote_image_airborne_url, :remote_image_landing_url,
        role_ids: [],
        type_ids: [],
        industry_ids: [],
        manufacturer_ids: [],
        engine_manufacturer_ids: [],
        engine_model_ids: [],
        engine_type_ids: []
        #role_attributes: [:id, :name],
        # aircraft_role_ids: [],
        # aircraft_roles_attributes: [:id, :role_id, :aircraft_id, :name]
      )
    end

    def build_attributes
      @aircraft.aircraftroles.build
      @aircraft.aircrafttypes.build
      @aircraft.aircraftenginemanufacturers.build
      @aircraft.aircraftenginemodels.build
      @aircraft.aircraftenginetypes.build
      @aircraft.aircraftindustries.build
      @aircraft.aircraftmanufacturers.build
    end
end
