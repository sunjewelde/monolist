class AddColumnToOwnership < ActiveRecord::Migration
  def change
    add_column :ownerships, :asin, :string
  end
end
