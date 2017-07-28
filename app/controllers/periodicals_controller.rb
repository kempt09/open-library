class PeriodicalsController < ApplicationController
  before_action :validate_user, :is_staff?
  before_action :set_periodical, only: [:show, :update, :destroy]

  # GET /periodicals
  def index
    @periodicals = Periodical.all.paginate(page: page, per_page: per_page)
    render json: @periodicals
  end

  # GET /periodicals/1
  def show
    render json: @periodical, include: ['authors', 'publisher', 'holding']
  end

  # POST /periodicals
  def create
    @periodical = Periodical.new(periodical_params)

    if @periodical.save
      render json: @periodical, status: :created, location: @periodical
    else
      render json: @periodical.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /periodicals/1
  def update
    if @periodical.update(periodical_params)
      render json: @periodical
    else
      render json: @periodical.errors, status: :unprocessable_entity
    end
  end

  # DELETE /periodicals/1
  def destroy
    @periodical.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_periodical
      @periodical = Periodical.includes(:authors, :publisher, :holding).find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def periodical_params
      params.require(:data).permit({attributes: [:title, :volume, :volume_no, :holding_id, :publisher_id]})
    end
end