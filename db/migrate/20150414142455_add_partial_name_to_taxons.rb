class AddPartialNameToTaxons < ActiveRecord::Migration
  def change
    add_column :spree_taxons, :partial_name, :string
  end
end
