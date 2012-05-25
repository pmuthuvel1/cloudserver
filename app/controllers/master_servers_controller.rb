class MasterServersController < ApplicationController
  # GET /master_servers
  # GET /master_servers.json
  def index
    @master_servers = MasterServer.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @master_servers }
    end
  end

  # GET /master_servers/1
  # GET /master_servers/1.json
  def show
    @master_server = MasterServer.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @master_server }
    end
  end

  # GET /master_servers/new
  # GET /master_servers/new.json
  def new
    @master_server = MasterServer.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @master_server }
    end
  end

  # GET /master_servers/1/edit
  def edit
    @master_server = MasterServer.find(params[:id])
  end

  # POST /master_servers
  # POST /master_servers.json
  def create
    @master_server = MasterServer.new(params[:master_server])

    respond_to do |format|
      if @master_server.save
        format.html { redirect_to @master_server, notice: 'Master server was successfully created.' }
        format.json { render json: @master_server, status: :created, location: @master_server }
      else
        format.html { render action: "new" }
        format.json { render json: @master_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /master_servers/1
  # PUT /master_servers/1.json
  def update
    @master_server = MasterServer.find(params[:id])

    respond_to do |format|
      if @master_server.update_attributes(params[:master_server])
        format.html { redirect_to @master_server, notice: 'Master server was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @master_server.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /master_servers/1
  # DELETE /master_servers/1.json
  def destroy
    @master_server = MasterServer.find(params[:id])
    @master_server.destroy

    respond_to do |format|
      format.html { redirect_to master_servers_url }
      format.json { head :no_content }
    end
  end
end
