# frozen_string_literal: true

class SolvedQuotesController < ProtectedController
  before_action :set_solved_quote, only: %i[show update destroy]

  # GET /solved_quotes
  def index
    @solved_quotes = current_user.solved_quotes.all

    render json: @solved_quotes
  end

  # GET /solved_quotes/1
  def show
    render json: @solved_quote
  end

  # POST /solved_quotes
  def create
    @solved_quote = current_user.solved_quotes.build(solved_quote_params)

    if @solved_quote.save
      render json: @solved_quote, status: :created, location: @solved_quote
    else
      render json: @solved_quote.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /solved_quotes/1
  # def update
  #   if @solved_quote.update(solved_quote_params)
  #     render json: @solved_quote
  #   else
  #     render json: @solved_quote.errors, status: :unprocessable_entity
  #   end
  # end

  # DELETE /solved_quotes/1
  def destroy
    @solved_quote.destroy
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_solved_quote
    @solved_quote = current_user.solved_quotes.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def solved_quote_params
    params.require(:solved_quote).permit(:user_id, :quote_id)
  end
end
