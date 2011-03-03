class TourProgramsController < ApplicationController
  # GET /tour_programs
  # GET /tour_programs.xml
  def index
    @tour_programs = TourProgram.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @tour_programs }
    end
  end

  # GET /tour_programs/1
  # GET /tour_programs/1.xml
  def show
    @tour_program = TourProgram.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @tour_program }
    end
  end

  # GET /tour_programs/new
  # GET /tour_programs/new.xml
  def new
    @tour_program = TourProgram.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @tour_program }
    end
  end

  # GET /tour_programs/1/edit
  def edit
    @tour_program = TourProgram.find(params[:id])
  end

  # POST /tour_programs
  # POST /tour_programs.xml
  def create
    @tour_program = TourProgram.new(params[:tour_program])

    respond_to do |format|
      if @tour_program.save
        format.html { redirect_to(@tour_program, :notice => 'Tour program was successfully created.') }
        format.xml  { render :xml => @tour_program, :status => :created, :location => @tour_program }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @tour_program.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /tour_programs/1
  # PUT /tour_programs/1.xml
  def update
    @tour_program = TourProgram.find(params[:id])

    respond_to do |format|
      if @tour_program.update_attributes(params[:tour_program])
        format.html { redirect_to(@tour_program, :notice => 'Tour program was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @tour_program.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /tour_programs/1
  # DELETE /tour_programs/1.xml
  def destroy
    @tour_program = TourProgram.find(params[:id])
    @tour_program.destroy

    respond_to do |format|
      format.html { redirect_to(tour_programs_url) }
      format.xml  { head :ok }
    end
  end
end
