class ProductsController < ApplicationController
  # GET /products
  # GET /products.json
  def index
    @products = ProductProduct.create(
      name:           'balls',
      cost_method:      'standard'
    )
       
       respond_to do |format|
         format.html # index.html.erb
         format.json { render json: @products }
       end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = ProductProduct.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = ProductProduct.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = ProductProduct.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @products = ProductProduct.create(
      name:             params[:name],
      cost_method:      params[:standard]
              # 'description' => $value['product_description'],
              #               'procure_method' => 'make_to_order',
              #               'supply_method' => 'buy',
              #               'sale_ok' => 'true', #Cand be Purchased
              #               'purchase_ok' => 'true', #Can be Sold
              #               'weight' => $value['product_weight'],
              #               'variants' => $value['size_name'],
              #               'company_id' => 3,
              #               'default_code' => $value['accounting_id'], #ref
              #               'list_price' => $value['product_price'], #sale_price
              #               'standard_price' => $value['cost'], #cost
              #               'property_account_income' => 197, #income_account
              #               'property_account_expense' => 205, #cogs_account
              #               'type' => 'product' #product_type ('product' = stockable_product)
    )

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = Product.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to @product, notice: 'Product was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to products_url }
      format.json { head :no_content }
    end
  end
end
