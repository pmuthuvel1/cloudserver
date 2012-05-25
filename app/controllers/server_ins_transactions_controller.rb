class ServerInsTransactionsController < ApplicationController
  # GET /server_ins_transactions
  # GET /server_ins_transactions.json
  def index
    @server_ins_transactions = ServerInsTransaction.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @server_ins_transactions }
    end
  end

  # GET /server_ins_transactions/1
  # GET /server_ins_transactions/1.json
  def show
    @server_ins_transaction = ServerInsTransaction.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @server_ins_transaction }
    end
  end

  # GET /server_ins_transactions/new
  # GET /server_ins_transactions/new.json
  def new
    @server_ins_transaction = ServerInsTransaction.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @server_ins_transaction }
    end
  end

  # GET /server_ins_transactions/1/edit
  def edit
    @server_ins_transaction = ServerInsTransaction.find(params[:id])
  end

  # POST /server_ins_transactions
  # POST /server_ins_transactions.json
  def create
    @server_ins_transaction = ServerInsTransaction.new(params[:server_ins_transaction])

    respond_to do |format|
      if @server_ins_transaction.save
        format.html { redirect_to @server_ins_transaction, notice: 'Server ins transaction was successfully created.' }
        format.json { render json: @server_ins_transaction, status: :created, location: @server_ins_transaction }
      else
        format.html { render action: "new" }
        format.json { render json: @server_ins_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /server_ins_transactions/1
  # PUT /server_ins_transactions/1.json
  def update
    @server_ins_transaction = ServerInsTransaction.find(params[:id])

    respond_to do |format|
      if @server_ins_transaction.update_attributes(params[:server_ins_transaction])
        format.html { redirect_to @server_ins_transaction, notice: 'Server ins transaction was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @server_ins_transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /server_ins_transactions/1
  # DELETE /server_ins_transactions/1.json
  def destroy
    @server_ins_transaction = ServerInsTransaction.find(params[:id])
    @server_ins_transaction.destroy

    respond_to do |format|
      format.html { redirect_to server_ins_transactions_url }
      format.json { head :no_content }
    end
  end
end
