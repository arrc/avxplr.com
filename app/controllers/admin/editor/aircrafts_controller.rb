class Admin::Editor::AircraftsController < ApplicationController
  before_action :set_aircraft, only: [:show, :edit, :update, :destroy]

  def index
    @aircrafts = Aircraft.all.includes(:roles, :types)
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
  end

  private

    def set_aircraft
      # pry.binding
      @aircraft = Aircraft.find(params[:id])
    end

    def aircraft_params
      params.require(:aircraft).permit(
        :model, :description, :year, :maiden_flight, :production_status,
        :national_origin,
        role_ids: [],
        type_ids: [],
        engine_manufacturer_ids: [],
        engine_model_ids: [],
        engine_type_ids: [],
        industry_ids: [],
        manufacturer_ids: [],
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
