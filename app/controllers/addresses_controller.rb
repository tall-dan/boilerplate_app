class AddressesController < ApplicationController
  def new
    @inputs = permissible_columns.map {|column| { name: column.name, type: column.sql_type } }
  end

  def index
    @addresses = Address.all
  end

  def create
    Address.create!(address_params)
    redirect_to addresses_path
  end

  private

  def address_params
    params.require(:address).permit(*permissible_columns.map(&:name))
  end

  def permissible_columns
    Address.columns.select { |column| %w[id created_at updated_at].exclude?(column.name) }
  end
end
