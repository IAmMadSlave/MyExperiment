class AddColumnToFnssSimpleKaryTree < ActiveRecord::Migration
  def change
    add_reference :fnss_simple_kary_trees, :generator_form, index: true
    add_reference :fnss_simple_dumbbells, :generator_form, index: true
  end
end
