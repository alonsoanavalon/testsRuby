class ProductosController < ApplicationController

    before_action :find_producto, except: [:index, :create, :index]
    

    def index
        @titulo = "Sección de articulos"
    end

    def new
        @producto = Producto.new

    end

    def create
        @producto = Producto.create(name:params[:name], description:params[:description], cantidad:params[:cantidad])
        render json: @producto
    end

    def show

    end

    def edit 

    end

    def update

        @producto.update(name:params[:producto][:name], description:params[:producto][:description], cantidad:params[:producto][:cantidad])
        redirect_to @producto
    end

    def destroy

        @producto.destroy
        redirect_to root_path
    end

    def find_producto
        if params[:id]
            @producto = Producto.find(params[:id])
        end

        
    end







end
