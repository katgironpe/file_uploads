class AddFileToAttachmentsController < ApplicationController
  before_action :set_add_file_to_attachment, only: [:show, :edit, :update, :destroy]

  # GET /add_file_to_attachments
  # GET /add_file_to_attachments.json
  def index
    @add_file_to_attachments = AddFileToAttachment.all
  end

  # GET /add_file_to_attachments/1
  # GET /add_file_to_attachments/1.json
  def show
  end

  # GET /add_file_to_attachments/new
  def new
    @add_file_to_attachment = AddFileToAttachment.new
  end

  # GET /add_file_to_attachments/1/edit
  def edit
  end

  # POST /add_file_to_attachments
  # POST /add_file_to_attachments.json
  def create
    @add_file_to_attachment = AddFileToAttachment.new(add_file_to_attachment_params)

    respond_to do |format|
      if @add_file_to_attachment.save
        format.html { redirect_to @add_file_to_attachment, notice: 'Add file to attachment was successfully created.' }
        format.json { render :show, status: :created, location: @add_file_to_attachment }
      else
        format.html { render :new }
        format.json { render json: @add_file_to_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_file_to_attachments/1
  # PATCH/PUT /add_file_to_attachments/1.json
  def update
    respond_to do |format|
      if @add_file_to_attachment.update(add_file_to_attachment_params)
        format.html { redirect_to @add_file_to_attachment, notice: 'Add file to attachment was successfully updated.' }
        format.json { render :show, status: :ok, location: @add_file_to_attachment }
      else
        format.html { render :edit }
        format.json { render json: @add_file_to_attachment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_file_to_attachments/1
  # DELETE /add_file_to_attachments/1.json
  def destroy
    @add_file_to_attachment.destroy
    respond_to do |format|
      format.html { redirect_to add_file_to_attachments_url, notice: 'Add file to attachment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_file_to_attachment
      @add_file_to_attachment = AddFileToAttachment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def add_file_to_attachment_params
      params.fetch(:add_file_to_attachment, {})
    end
end
