class ContactsController < ApplicationController
  before_action :set_contact, only: [:edit]

  # GET /contacts
  # GET /contacts.json
  def index
    redirect_to root_path
  end

  # GET /contacts/1
  # GET /contacts/1.json
  def show
    redirect_to root_path
  end

  # GET /contacts/new
  def new
    @contact = Contact.new
  end

  # GET /contacts/1/edit
  def edit
    redirect_to root_path
  end

  # POST /contacts
  # POST /contacts.json
  def create
    @contact = Contact.new(contact_params)

    respond_to do |format|
      if @contact.save
        format.html { redirect_to @contact, notice: 'Votre message à bien été envoyé.' }
        format.json { render :show, status: :created, location: @contact }
      else
        format.html { render :new }
        format.json { render json: @contact.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contacts/1
  # PATCH/PUT /contacts/1.json
  def update
  redirect_to root_path
  end

  # DELETE /contacts/1
  # DELETE /contacts/1.json
  def destroy
  redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contact
      @contact = Contact.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contact_params
      params.require(:contact).permit(:name, :email, :subject, :message)
    end
end
