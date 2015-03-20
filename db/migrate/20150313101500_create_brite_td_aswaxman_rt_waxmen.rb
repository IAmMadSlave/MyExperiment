class CreateBriteTdAswaxmanRtWaxmen < ActiveRecord::Migration
  def change
    create_table :brite_td_aswaxman_rt_waxmen do |t|
      t.integer :name
      t.integer :edgeconn
      t.integer :k
      t.integer :bwinter
      t.integer :bwintermin
      t.integer :bwintermax
      t.integer :bwintra
      t.integer :bwintramin
      t.integer :bwintramax
      t.integer :name_waxman_one
      t.integer :n
      t.integer :hs
      t.integer :ls
      t.integer :nodeplacement
      t.integer :growthtype
      t.integer :m
      t.decimal :alpha
      t.decimal :beta
      t.integer :bwdist
      t.integer :bwmin
      t.integer :bwmax
      t.integer :name_rtwaxman
      t.integer :n_waxman
      t.integer :hs_waxman
      t.integer :ls_waxman
      t.integer :nodeplacement_waxman
      t.integer :growthtype_waxman
      t.integer :m_waxman
      t.decimal :alpha_waxman
      t.integer :beta_waxman
      t.integer :bwdist_waxman
      t.integer :bwmin_waxman
      t.integer :bwmax_waxman
      t.integer :generator_form_id

      t.timestamps
    end
  end
end
