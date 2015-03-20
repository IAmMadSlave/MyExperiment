class AsBarabasi < ActiveRecord::Base
    validates :name, presence: true
    validates :n, presence: true
    validates :hs, presence: true
    validates :ls, presence: true
    validates :nodeplacement, presence: true
    validates :m, presence: true
    validates :bwdist, presence: true
    validates :bwmin, presence: true
    validates :bwmax, presence: true
end
