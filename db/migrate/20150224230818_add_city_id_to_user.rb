class AddCityIdToUser < ActiveRecord::Migration
  def change
  	add_reference :users, :city, index: true
  end
end
