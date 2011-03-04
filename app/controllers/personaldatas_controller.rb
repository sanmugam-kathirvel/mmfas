class PersonaldatasController < ApplicationController
  # GET /personaldatas
  # GET /personaldatas.xml
  def index
    @personaldatas = Personaldata.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @personaldatas }
    end
  end

  # GET /personaldatas/1
  # GET /personaldatas/1.xml
  def show
    @personaldata = Personaldata.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @personaldata }
    end
  end

  # GET /personaldatas/new
  # GET /personaldatas/new.xml
  def new
    @personaldata = Personaldata.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @personaldata }
    end
  end

  # GET /personaldatas/1/edit
  def edit
    @personaldata = Personaldata.find(params[:id])
  end

  # POST /personaldatas
  # POST /personaldatas.xml
  def create
    @personaldata = Personaldata.new(params[:personaldata])

    respond_to do |format|
      if @personaldata.save
        format.html { redirect_to(@personaldata, :notice => 'Personaldata was successfully created.') }
        format.xml  { render :xml => @personaldata, :status => :created, :location => @personaldata }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @personaldata.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /personaldatas/1
  # PUT /personaldatas/1.xml
  def update
    @personaldata = Personaldata.find(params[:id])

    respond_to do |format|
      if @personaldata.update_attributes(params[:personaldata])
        format.html { redirect_to(@personaldata, :notice => 'Personaldata was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @personaldata.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /personaldatas/1
  # DELETE /personaldatas/1.xml
  def destroy
    @personaldata = Personaldata.find(params[:id])
    @personaldata.destroy

    respond_to do |format|
      format.html { redirect_to(personaldatas_url) }
      format.xml  { head :ok }
    end
  end
end
