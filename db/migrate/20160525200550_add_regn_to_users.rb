class AddRegnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :regn, :string
  end
end
