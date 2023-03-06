class ClothsController < ApplicationController
  def index
    cloths = Cloth.all
    render json: cloths
  end

  def show
    cloth = Cloth.find(params[:id])
    render json: cloth
  end

  def create
    cloth = Cloth.new(cloth_params)

    if cloth.save
      render json: cloth, status: :created
    else
      render json: cloth.errors, status: :unprocessable_entity
    end
  end

  def update
    cloth = Cloth.find(params[:id])

    if cloth.update(cloth_params)
      render json: cloth
    else
      render json: cloth.errors, status: :unprocessable_entity
    end
  end

  def destroy
    cloth = Cloth.find(params[:id])
    cloth.destroy
  end

  private

  def cloth_params
    params.require(:cloth).permit(:name, :category, :size, :image_url, :price)
  end
end
