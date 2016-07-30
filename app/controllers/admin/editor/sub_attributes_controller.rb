class Admin::Editor::SubAttributesController < ApplicationController

  before_action :set_item, only: [:edit, :update, :destroy]

  def index
    @roles = Role.find_each
    @role = Role.new
    @types = Type.find_each
    @manufacturers = Manufacturer.find_each
    @industries = Industry.find_each
  end

  def new
  end

  def create
    @role = Role.new(permited_params)
    respond_to do |format|
      if @role.save
        format.js
      else
        format.js
      end
    end
  end

  def edit
    pp params
    pp params["model"].constantize.find(params[:id])
    # pp params["#{c.name.underscore}_id"]
    # klass = [Role, Type].detect {|c| params["#{c.name.underscore}_id"] }
  end

  def update
    respond_to do |format|
      if @role.update(permited_params)
        format.js
      else
        format.js
      end
    end
  end

  def destroy
    @role.destroy
    respond_to do |format|
      format.js
    end
  end


private

  def set_item
    @role = Role.find(params[:id])
  end

  def permited_params
    params.require(:role).permit(:name, :description)
  end
end
