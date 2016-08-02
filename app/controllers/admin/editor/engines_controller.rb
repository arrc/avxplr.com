class Admin::Editor::EnginesController < ApplicationController
  before_action :set_engine, only: [:show, :edit, :update, :destroy]
  def index
    @engines = EngineModel.all
  end

  def show
  end

  def new
    @engine = EngineModel.new
  end

  def create
    @engine = EngineModel.new(engine_params)
    if @engine.save
      redirect_to admin_editor_engine_path(@engine), notice: 'Engine was successfully created.'
    end
  end

  def edit
  end

  def update
    if @engine.update(engine_params)
      redirect_to admin_editor_engine_path(@engine), notice: 'Engine was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @engine.destroy
      redirect_to admin_editor_engines_path, notice: "Engine was deleted successfully."
    end
  end

private

  def set_engine
    @engine = EngineModel.find(params[:id])
  end

  def engine_params
    params.require(:engine_model).permit(:name, :description, :year, :engine_manufacturer_id)
  end

end
