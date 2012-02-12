class FoliosController < ApplicationController
  # GET /portfolio
  def portfolio
    @folios = Folio.find(:all, :order => 'updated_at DESC')

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @folios }
    end
  end
end
