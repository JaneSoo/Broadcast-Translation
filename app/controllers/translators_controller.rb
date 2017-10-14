class TranslatorsController < ApplicationController
  before_action :set_translator, only: [:show, :edit, :update, :destroy]

  # GET /translators
  def index
    @translators = Translator.all
  end

  # GET /translators/1
  def show
  end

  # GET /translators/new
  def new
    @translator = Translator.new
  end

  # GET /translators/1/edit
  def edit
  end

  # POST /translators
  def create
    @translator = Translator.new(translator_params)

    if @translator.save
      redirect_to @translator, notice: 'Translator was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /translators/1
  def update
    if @translator.update(translator_params)
      redirect_to @translator, notice: 'Translator was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /translators/1
  def destroy
    @translator.destroy
    redirect_to translators_url, notice: 'Translator was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_translator
      @translator = Translator.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def translator_params
      params.require(:translator).permit(:name, :email, :phone, :gender)
    end
end
