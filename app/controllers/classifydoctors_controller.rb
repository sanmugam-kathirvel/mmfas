class ClassifydoctorsController < ApplicationController
  # GET /classifydoctors
  # GET /classifydoctors.xml
  def index
    @classifydoctors = Classifydoctor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @classifydoctors }
    end
  end

  # GET /classifydoctors/1
  # GET /classifydoctors/1.xml
  def show
    @classifydoctor = Classifydoctor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @classifydoctor }
    end
  end

  # GET /classifydoctors/new
  # GET /classifydoctors/new.xml
  def new
    @classifydoctor = Classifydoctor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @classifydoctor }
    end
  end

  # GET /classifydoctors/1/edit
  def edit
    @classifydoctor = Classifydoctor.find(params[:id])
  end

  # POST /classifydoctors
  # POST /classifydoctors.xml
  def create
    @classifydoctor = Classifydoctor.new(params[:classifydoctor])

    respond_to do |format|
      if @classifydoctor.save
        format.html { redirect_to(@classifydoctor, :notice => 'Classifydoctor was successfully created.') }
        format.xml  { render :xml => @classifydoctor, :status => :created, :location => @classifydoctor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @classifydoctor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /classifydoctors/1
  # PUT /classifydoctors/1.xml
  def update
    @classifydoctor = Classifydoctor.find(params[:id])

    respond_to do |format|
      if @classifydoctor.update_attributes(params[:classifydoctor])
        format.html { redirect_to(@classifydoctor, :notice => 'Classifydoctor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @classifydoctor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /classifydoctors/1
  # DELETE /classifydoctors/1.xml
  def destroy
    @classifydoctor = Classifydoctor.find(params[:id])
    @classifydoctor.destroy

    respond_to do |format|
      format.html { redirect_to(classifydoctors_url) }
      format.xml  { head :ok }
    end
  end
end
