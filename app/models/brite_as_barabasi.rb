class BriteAsBarabasi < ActiveRecord::Base
  belongs_to :generator
  belongs_to :type
  belongs_to :user
  belongs_to :generator_form
end
 #"n", "hs", "ls", "nodeplacement", "m", "bwdist", "bwmin", "bwmax", "name"