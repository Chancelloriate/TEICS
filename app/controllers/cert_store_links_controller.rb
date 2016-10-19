class CertStoreLinksController < ApplicationController
  before_action :set_cert_store_link, only: [:show, :edit, :update, :destroy]

  # GET /cert_store_links
  # GET /cert_store_links.json
  def index
    @cert_store_links = CertStoreLink.all
  end

  # GET /cert_store_links/1
  # GET /cert_store_links/1.json
  def show
  end

  # GET /cert_store_links/new
  def new
    @cert_store_link = CertStoreLink.new
  end

  # GET /cert_store_links/1/edit
  def edit
  end

  # POST /cert_store_links
  # POST /cert_store_links.json
  def create
    @cert_store_link = CertStoreLink.new(cert_store_link_params)

    respond_to do |format|
      if @cert_store_link.save
        format.html { redirect_to @cert_store_link, notice: 'Cert store link was successfully created.' }
        format.json { render :show, status: :created, location: @cert_store_link }
      else
        format.html { render :new }
        format.json { render json: @cert_store_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cert_store_links/1
  # PATCH/PUT /cert_store_links/1.json
  def update
    respond_to do |format|
      if @cert_store_link.update(cert_store_link_params)
        format.html { redirect_to @cert_store_link, notice: 'Cert store link was successfully updated.' }
        format.json { render :show, status: :ok, location: @cert_store_link }
      else
        format.html { render :edit }
        format.json { render json: @cert_store_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cert_store_links/1
  # DELETE /cert_store_links/1.json
  def destroy
    @cert_store_link.destroy
    respond_to do |format|
      format.html { redirect_to cert_store_links_url, notice: 'Cert store link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cert_store_link
      @cert_store_link = CertStoreLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cert_store_link_params
      params.require(:cert_store_link).permit(:CertStoreLinkId, :SourceLinkId, :CertStoreId, :CreatedBy, :CreatedDate, :LastModifiedBy, :LastModifiedDate, :IsDeleted)
    end
end
