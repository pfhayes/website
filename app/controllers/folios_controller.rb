class FoliosController < ApplicationController
  # GET /folios
  # GET /folios.xml
  def index
    @folios = Folio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @folios }
    end
  end

  # GET /folios/1
  # GET /folios/1.xml
  def show
    @folio = Folio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @folio }
    end
  end
end
