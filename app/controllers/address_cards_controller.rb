class AddressCardsController < ApplicationController
  # GET /address_cards
  # GET /address_cards.xml
  def index
    @address_cards = AddressCard.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @address_cards }
    end
  end

  # GET /address_cards/1
  # GET /address_cards/1.xml
  def show
    @address_card = AddressCard.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @address_card }
    end
  end

  # GET /address_cards/new
  # GET /address_cards/new.xml
  def new
    @address_card = AddressCard.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @address_card }
    end
  end

  # GET /address_cards/1/edit
  def edit
    @address_card = AddressCard.find(params[:id])
  end

  # POST /address_cards
  # POST /address_cards.xml
  def create
    @address_card = AddressCard.new(params[:address_card])

    respond_to do |format|
      if @address_card.save
        format.html { redirect_to(@address_card, :notice => 'Address card was successfully created.') }
        format.xml  { render :xml => @address_card, :status => :created, :location => @address_card }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @address_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /address_cards/1
  # PUT /address_cards/1.xml
  def update
    @address_card = AddressCard.find(params[:id])

    respond_to do |format|
      if @address_card.update_attributes(params[:address_card])
        format.html { redirect_to(@address_card, :notice => 'Address card was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @address_card.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /address_cards/1
  # DELETE /address_cards/1.xml
  def destroy
    @address_card = AddressCard.find(params[:id])
    @address_card.destroy

    respond_to do |format|
      format.html { redirect_to(address_cards_url) }
      format.xml  { head :ok }
    end
  end
end
