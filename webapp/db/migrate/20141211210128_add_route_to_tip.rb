class AddRouteToTip < ActiveRecord::Migration
  def change
    add_reference :tips, :route, index: true
  end
end
