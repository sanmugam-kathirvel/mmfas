class HeadquatorsController < ApplicationController
  # GET /headquators
  # GET /headquators.xml
  def index
    @headquators = Headquator.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @headquators }
    end
  end

  # GET /headquators/1
  # GET /headquators/1.xml
  def show
    @headquator = Headquator.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @headquator }
    end
  end

  # GET /headquators/new
  # GET /headquators/new.xml
  def new
    @headquator = Headquator.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @headquator }
    end
  end

  # GET /headquators/1/edit
  def edit
    @headquator = Headquator.find(params[:id])
  end

  # POST /headquators
  # POST /headquators.xml
  def create
    @headquator = Headquator.new(params[:headquator])

    respond_to do |format|
      if @headquator.save
        format.html { redirect_to(@headquator, :notice => 'Headquator was successfully created.') }
        format.xml  { render :xml => @headquator, :status => :created, :location => @headquator }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @headquator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /headquators/1
  # PUT /headquators/1.xml
  def update
    @headquator = Headquator.find(params[:id])

    respond_to do |format|
      if @headquator.update_attributes(params[:headquator])
        format.html { redirect_to(@headquator, :notice => 'Headquator was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @headquator.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /headquators/1
  # DELETE /headquators/1.xml
  def destroy
    @headquator = Headquator.find(params[:id])
    @headquator.destroy

    respond_to do |format|
      format.html { redirect_to(headquators_url) }
      format.xml  { head :ok }
    end
  end
end
