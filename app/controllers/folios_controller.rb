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

  # GET /folios/new
  # GET /folios/new.xml
  def new
    @folio = Folio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @folio }
    end
  end

  # GET /folios/1/edit
  def edit
    @folio = Folio.find(params[:id])
  end

  # POST /folios
  # POST /folios.xml
  def create
    @folio = Folio.new(params[:folio])

    respond_to do |format|
      if @folio.save
        format.html { redirect_to(@folio, :notice => 'Folio was successfully created.') }
        format.xml  { render :xml => @folio, :status => :created, :location => @folio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @folio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /folios/1
  # PUT /folios/1.xml
  def update
    @folio = Folio.find(params[:id])

    respond_to do |format|
      if @folio.update_attributes(params[:folio])
        format.html { redirect_to(@folio, :notice => 'Folio was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @folio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /folios/1
  # DELETE /folios/1.xml
  def destroy
    @folio = Folio.find(params[:id])
    @folio.destroy

    respond_to do |format|
      format.html { redirect_to(folios_url) }
      format.xml  { head :ok }
    end
  end
end
