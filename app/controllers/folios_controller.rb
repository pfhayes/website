class FoliosController < ApplicationController
  # GET /portfolio
  def portfolio
    @folios = Folio.find(:all, :order => 'id')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @folios }
    end
  end
end
