class Admin::Editor::SubAttributesController < ApplicationController

  before_action :set_item, only: [:edit, :update, :destroy]

  def index
    @roles = Role.find_each
    @role = Role.new

    @types = Type.find_each
    @type = Type.new

    @manufacturers = Manufacturer.find_each
    @manufacturer = Manufacturer.new

    @industries = Industry.find_each
    @industry = Industry.new

    @engine_manufacturers = EngineManufacturer.find_each
    @engine_manufacturer = EngineManufacturer.new

    @engine_types = EngineType.find_each
    @engine_type = EngineType.new
  end

  def new
  end

  def create
    klass = params[:klass].constantize
    @klass = klass.new(permited_params)
    respond_to do |format|
      if @klass.save
        format.js
      else
        format.js
      end
    end
    # @role = Role.new(permited_params)
    # respond_to do |format|
    #   if @role.save
    #     format.js
    #   else
    #     format.js
    #   end
    # end
  end

  def edit
  end

  def update
    respond_to do |format|
      if @klass.update(permited_params)
        format.js
      else
        format.js
      end
    end

    # respond_to do |format|
    #   if @role.update(permited_params)
    #     format.js
    #   else
    #     format.js
    #   end
    # end
  end

  def destroy
    @klass.destroy
    respond_to do |format|
      format.js
    end
    # @role.destroy
    # respond_to do |format|
    #   format.js
    # end
  end


private

  def set_item
    # @role = Role.find(params[:id])
    @klass = params[:klass].constantize.find(params[:id])
  end

  def permited_params
    # params.require(:role).permit(:name, :description, :klass)
    klass = params[:klass].downcase.parameterize.to_sym
    params.require(klass).permit(:name, :description)
  end
end
