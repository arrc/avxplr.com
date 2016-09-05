class FlagsController < ApplicationController
  before_action :load_flagable

  def index
    # @flagable = Aircraft.find(params[:aircraft_id])
    @flags = @flagable.flags
  end

  def new
    @flag = @flagable.flags.new
  end

  def create
    @flag = @flagable.flags.new(flags_params)
    @flag.user_id = current_user.id
    if @flag.save
      redirect_back(fallback_location: root_path)
    else
      render :new
    end
  end

private

  def flags_params
    params.require(:flag).permit(:message)
  end

  def load_flagable
    klass = [Comment, Shot].detect {|c| params["#{c.name.underscore}_id"] }
    @flagable = klass.friendly.find(params["#{klass.name.underscore}_id"])
  end
end
