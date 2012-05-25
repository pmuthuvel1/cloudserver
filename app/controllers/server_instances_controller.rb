class ServerInstancesController < ApplicationController
  # GET /server_instances
  # GET /server_instances.json
  def index
    @server_instances = ServerInstance.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @server_instances }
    end
  end

  # GET /server_instances/1
  # GET /server_instances/1.json
  def show
    @server_instance = ServerInstance.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @server_instance }
    end
  end

  # GET /server_instances/new
  # GET /server_instances/new.json
  def new
    @server_instance = ServerInstance.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @server_instance }
    end
  end

  # GET /server_instances/1/edit
  def edit
    @server_instance = ServerInstance.find(params[:id])
  end

  # POST /server_instances
  # POST /server_instances.json
  def create
    @server_instance = ServerInstance.new(params[:server_instance])

    respond_to do |format|
      if @server_instance.save
        format.html { redirect_to @server_instance, notice: 'Server instance was successfully created.' }
        format.json { render json: @server_instance, status: :created, location: @server_instance }
      else
        format.html { render action: "new" }
        format.json { render json: @server_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /server_instances/1
  # PUT /server_instances/1.json
  def update
    @server_instance = ServerInstance.find(params[:id])

    respond_to do |format|
      if @server_instance.update_attributes(params[:server_instance])
        format.html { redirect_to @server_instance, notice: 'Server instance was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @server_instance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /server_instances/1
  # DELETE /server_instances/1.json
  def destroy
    @server_instance = ServerInstance.find(params[:id])
    @server_instance.destroy

    respond_to do |format|
      format.html { redirect_to server_instances_url }
      format.json { head :no_content }
    end
  end
end
