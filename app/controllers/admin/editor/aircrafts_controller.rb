class Admin::Editor::AircraftsController < ApplicationController
  before_action :set_aircraft, only: [:show, :edit, :update, :destroy]

  def index
    @aircrafts = Aircraft.all
  end

  def show
  end

  def new
    @aircraft = Aircraft.new
    @aircraft.aircraftroles.build
    @aircraft.aircrafttypes.build
  end


  def edit
    @aircraft.aircraftroles.build
    @aircraft.aircrafttypes.build
  end

  def create
    @aircraft = Aircraft.new(aircraft_params)
    # @aircraft.aircraftroles.build
    # @aircraft.aircrafttypes.build
    if @aircraft.save
      redirect_to admin_editor_aircraft_path(@aircraft), notice: 'Aircraft was successfully created.'
    end
  end

  def update
    # @aircraft.aircraftroles.build
    # @aircraft.aircrafttypes.build
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
        #role_attributes: [:id, :name],
        # aircraft_role_ids: [],
        # aircraft_roles_attributes: [:id, :role_id, :aircraft_id, :name]
      )
    end
end
