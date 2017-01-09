class TestTemplatesController < ApplicationController
  before_action :set_test_template, only: [:show, :edit, :update, :destroy]

  # GET /test_templates
  # GET /test_templates.json
  def index
    @test_templates = TestTemplate.all
  end

  # GET /test_templates/1
  # GET /test_templates/1.json
  def show
  end

  # GET /test_templates/new
  def new
    @test_template = TestTemplate.new
  end

  # GET /test_templates/1/edit
  def edit
  end

  # POST /test_templates
  # POST /test_templates.json
  def create
    @test_template = TestTemplate.new(test_template_params)

    respond_to do |format|
      if @test_template.save
        format.html { redirect_to @test_template, notice: 'Test template was successfully created.' }
        format.json { render :show, status: :created, location: @test_template }
      else
        format.html { render :new }
        format.json { render json: @test_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /test_templates/1
  # PATCH/PUT /test_templates/1.json
  def update
    respond_to do |format|
      if @test_template.update(test_template_params)
        format.html { redirect_to @test_template, notice: 'Test template was successfully updated.' }
        format.json { render :show, status: :ok, location: @test_template }
      else
        format.html { render :edit }
        format.json { render json: @test_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /test_templates/1
  # DELETE /test_templates/1.json
  def destroy
    @test_template.destroy
    respond_to do |format|
      format.html { redirect_to test_templates_url, notice: 'Test template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_test_template
      @test_template = TestTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def test_template_params
      params.require(:test_template).permit(:first, :last)
    end
end
