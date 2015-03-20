class AddColumnToFnssSimpleLine < ActiveRecord::Migration
  def change
    add_reference :fnss_simple_lines, :generator_form, index: true
  end
end
