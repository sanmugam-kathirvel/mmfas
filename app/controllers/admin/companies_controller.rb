class Admin::CompaniesController < ApplicationController
  # GET /admin/companies
  # GET /admin/companies.xml
  def index
    @admin_companies = Admin::Company.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @admin_companies }
    end
  end

  # GET /admin/companies/1
  # GET /admin/companies/1.xml
  def show
    @admin_company = Admin::Company.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @admin_company }
    end
  end

  # GET /admin/companies/new
  # GET /admin/companies/new.xml
  def new
    @admin_company = Admin::Company.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @admin_company }
    end
  end

  # GET /admin/companies/1/edit
  def edit
    @admin_company = Admin::Company.find(params[:id])
  end

  # POST /admin/companies
  # POST /admin/companies.xml
  def create
    @admin_company = Admin::Company.new(params[:admin_company])

    respond_to do |format|
      if @admin_company.save
        format.html { redirect_to(@admin_company, :notice => 'Company was successfully created.') }
        format.xml  { render :xml => @admin_company, :status => :created, :location => @admin_company }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @admin_company.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/companies/1
  # PUT /admin/companies/1.xml
  def update
    @admin_company = Admin::Company.find(params[:id])

    respond_to do |format|
      if @admin_company.update_attributes(params[:admin_company])
        format.html { redirect_to(@admin_company, :notice => 'Company was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @admin_company.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/companies/1
  # DELETE /admin/companies/1.xml
  def destroy
    @admin_company = Admin::Company.find(params[:id])
    @admin_company.destroy

    respond_to do |format|
      format.html { redirect_to(admin_companies_url) }
      format.xml  { head :ok }
    end
  end
end
