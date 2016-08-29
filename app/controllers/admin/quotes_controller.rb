class Admin::QuotesController < AdminController

  layout 'admin'

  before_action :set_quote, only: [:edit, :update, :destroy]

  def index
    @quotes = Quote.order(:id)
    # we use modal dialog for creating new quotes hence we need to instantiate Quote here.
    @quote = Quote.new
  end

  def new
    #code
    @quote = Quote.new
  end

  def edit
    #code
  end

  def create
    @quote = Quote.new(permited_params)
    respond_to do |format|
      if @quote.save
        format.js
      else
        format.js
      end
    end
  end

  def update
    respond_to do |format|
      if @quote.update(permited_params)
        format.js
      else
        format.js
      end
    end
  end

  def destroy
    @quote.destroy
  end

  private

  def set_quote
    @quote = Quote.find(params[:id])
  end

  def permited_params
    params.require(:quote).permit(:body, :author)
  end
end
