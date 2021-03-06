class SendEmailsController < ApplicationController
  before_action :set_send_email, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /send_emails
  # GET /send_emails.json
  def index
    @send_emails = SendEmail.all
  end

  # GET /send_emails/1
  # GET /send_emails/1.json
  def show
  end

  # GET /send_emails/new
  def new
    @send_email = SendEmail.new
  end

  # GET /send_emails/1/edit
  def edit
  end

  # POST /send_emails
  # POST /send_emails.json
  def create
    @send_email = SendEmail.new(send_email_params)

    respond_to do |format|
      if @send_email.save
        format.html { redirect_to @send_email, notice: 'Send email was successfully created.' }
        format.json { render :show, status: :created, location: @send_email }
      else
        format.html { render :new }
        format.json { render json: @send_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /send_emails/1
  # PATCH/PUT /send_emails/1.json
  def update
    respond_to do |format|
      if @send_email.update(send_email_params)
        format.html { redirect_to @send_email, notice: 'Send email was successfully updated.' }
        format.json { render :show, status: :ok, location: @send_email }
      else
        format.html { render :edit }
        format.json { render json: @send_email.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /send_emails/1
  # DELETE /send_emails/1.json
  def destroy
    @send_email.destroy
    respond_to do |format|
      format.html { redirect_to send_emails_url, notice: 'Send email was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_send_email
      @send_email = SendEmail.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def send_email_params
      params.require(:send_email).permit(:name, :email, :phone, :address)
    end
end
