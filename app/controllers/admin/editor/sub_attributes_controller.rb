class Admin::Editor::SubAttributesController < ApplicationController
  layout "admin"
  before_action :set_item, only: [:edit, :update, :destroy]

  def index
    @roles = Role.all
    @role = Role.new

    @types = Type.all
    @type = Type.new

    @manufacturers = Manufacturer.all
    @manufacturer = Manufacturer.new

    @industries = Industry.all
    @industry = Industry.new

    #
    @enginetypes = EngineType.all
    @enginetype = EngineType.new

    @engine_manufacturers = EngineManufacturer.all
    @engine_manufacturer = EngineManufacturer.new
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
    pp @klass = params[:klass].constantize.find(params[:id])
  end

  def permited_params
    # params.require(:role).permit(:name, :description, :klass)
    # pp lass = params[:klass].downcase.parameterize.to_sym
    klass = params[:klass].tableize.singularize.to_sym
    params.require(klass).permit(:name, :description, :category_id)
  end
end
