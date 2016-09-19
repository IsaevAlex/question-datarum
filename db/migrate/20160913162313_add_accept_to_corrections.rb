class AddAcceptToCorrections < ActiveRecord::Migration
  def change
    add_column :corrections, :accept, :boolean, default: false
  end
end
