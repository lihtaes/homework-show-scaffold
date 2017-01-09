class FinalTestsController < ApplicationController
  before_action :set_final_test, only: [:show, :edit, :update, :destroy]

  # GET /final_tests
  # GET /final_tests.json
  def index
    @final_tests = FinalTest.all
  end

  # GET /final_tests/1
  # GET /final_tests/1.json
  def show
  end

  # GET /final_tests/new
  def new
    @final_test = FinalTest.new
  end

  # GET /final_tests/1/edit
  def edit
  end

  # POST /final_tests
  # POST /final_tests.json
  def create
    @final_test = FinalTest.new(final_test_params)

    respond_to do |format|
      if @final_test.save
        format.html { redirect_to @final_test, notice: 'Final test was successfully created.' }
        format.json { render :show, status: :created, location: @final_test }
      else
        format.html { render :new }
        format.json { render json: @final_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /final_tests/1
  # PATCH/PUT /final_tests/1.json
  def update
    respond_to do |format|
      if @final_test.update(final_test_params)
        format.html { redirect_to @final_test, notice: 'Final test was successfully updated.' }
        format.json { render :show, status: :ok, location: @final_test }
      else
        format.html { render :edit }
        format.json { render json: @final_test.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /final_tests/1
  # DELETE /final_tests/1.json
  def destroy
    @final_test.destroy
    respond_to do |format|
      format.html { redirect_to final_tests_url, notice: 'Final test was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_final_test
      @final_test = FinalTest.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def final_test_params
      params.require(:final_test).permit(:this, :that)
    end
end
