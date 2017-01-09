class PostTemplatesController < ApplicationController
  before_action :set_post_template, only: [:show, :edit, :update, :destroy]

  # GET /post_templates
  # GET /post_templates.json
  def index
    @post_templates = PostTemplate.all
  end

  # GET /post_templates/1
  # GET /post_templates/1.json
  def show
  end

  # GET /post_templates/new
  def new
    @post_template = PostTemplate.new
  end

  # GET /post_templates/1/edit
  def edit
  end

  # POST /post_templates
  # POST /post_templates.json
  def create
    @post_template = PostTemplate.new(post_template_params)

    respond_to do |format|
      if @post_template.save
        format.html { redirect_to @post_template, notice: 'Post template was successfully created.' }
        format.json { render :show, status: :created, location: @post_template }
      else
        format.html { render :new }
        format.json { render json: @post_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /post_templates/1
  # PATCH/PUT /post_templates/1.json
  def update
    respond_to do |format|
      if @post_template.update(post_template_params)
        format.html { redirect_to @post_template, notice: 'Post template was successfully updated.' }
        format.json { render :show, status: :ok, location: @post_template }
      else
        format.html { render :edit }
        format.json { render json: @post_template.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /post_templates/1
  # DELETE /post_templates/1.json
  def destroy
    @post_template.destroy
    respond_to do |format|
      format.html { redirect_to post_templates_url, notice: 'Post template was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_post_template
      @post_template = PostTemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def post_template_params
      params.require(:post_template).permit(:new_thing, :other_thing, :another_thing)
    end
end
