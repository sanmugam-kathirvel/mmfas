class Admin::TownsController < ApplicationController
  # GET /admin/towns
  # GET /admin/towns.xml
  def index
    @admin_towns = Admin::Town.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_towns }
    end
  end

  # GET /admin/towns/1
  # GET /admin/towns/1.xml
  def show
    @admin_town = Admin::Town.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_town }
    end
  end

  # GET /admin/towns/new
  # GET /admin/towns/new.xml
  def new
    @admin_town = Admin::Town.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_town }
    end
  end

  # GET /admin/towns/1/edit
  def edit
    @admin_town = Admin::Town.find(params[:id])
  end

  # POST /admin/towns
  # POST /admin/towns.xml
  def create
    @admin_town = Admin::Town.new(params[:admin_town])

    respond_to do |format|
      if @admin_town.save
        format.html { redirect_to(@admin_town, :notice => 'Town was successfully created.') }
        format.xml  { render :xml => @admin_town, :status => :created, :location => @admin_town }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_town.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/towns/1
  # PUT /admin/towns/1.xml
  def update
    @admin_town = Admin::Town.find(params[:id])

    respond_to do |format|
      if @admin_town.update_attributes(params[:admin_town])
        format.html { redirect_to(@admin_town, :notice => 'Town was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_town.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/towns/1
  # DELETE /admin/towns/1.xml
  def destroy
    @admin_town = Admin::Town.find(params[:id])
    @admin_town.destroy

    respond_to do |format|
      format.html { redirect_to(admin_towns_url) }
      format.xml  { head :ok }
    end
  end
end
