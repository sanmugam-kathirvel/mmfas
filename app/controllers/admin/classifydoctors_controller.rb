class Admin::ClassifydoctorsController < ApplicationController
  # GET /admin/classifydoctors
  # GET /admin/classifydoctors.xml
  def index
    @admin_classifydoctors = Admin::Classifydoctor.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_classifydoctors }
    end
  end

  # GET /admin/classifydoctors/1
  # GET /admin/classifydoctors/1.xml
  def show
    @admin_classifydoctor = Admin::Classifydoctor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_classifydoctor }
    end
  end

  # GET /admin/classifydoctors/new
  # GET /admin/classifydoctors/new.xml
  def new
    @admin_classifydoctor = Admin::Classifydoctor.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_classifydoctor }
    end
  end

  # GET /admin/classifydoctors/1/edit
  def edit
    @admin_classifydoctor = Admin::Classifydoctor.find(params[:id])
  end

  # POST /admin/classifydoctors
  # POST /admin/classifydoctors.xml
  def create
    @admin_classifydoctor = Admin::Classifydoctor.new(params[:admin_classifydoctor])

    respond_to do |format|
      if @admin_classifydoctor.save
        format.html { redirect_to(@admin_classifydoctor, :notice => 'Classifydoctor was successfully created.') }
        format.xml  { render :xml => @admin_classifydoctor, :status => :created, :location => @admin_classifydoctor }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_classifydoctor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/classifydoctors/1
  # PUT /admin/classifydoctors/1.xml
  def update
    @admin_classifydoctor = Admin::Classifydoctor.find(params[:id])

    respond_to do |format|
      if @admin_classifydoctor.update_attributes(params[:admin_classifydoctor])
        format.html { redirect_to(@admin_classifydoctor, :notice => 'Classifydoctor was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_classifydoctor.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/classifydoctors/1
  # DELETE /admin/classifydoctors/1.xml
  def destroy
    @admin_classifydoctor = Admin::Classifydoctor.find(params[:id])
    @admin_classifydoctor.destroy

    respond_to do |format|
      format.html { redirect_to(admin_classifydoctors_url) }
      format.xml  { head :ok }
    end
  end
end
