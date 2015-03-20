# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

@gensimple=Generator.create(:name=>"FNSS Simple")
Type.create(:name=>"Ring",:generator_id=>@gensimple.id)
Type.create(:name=>"Line",:generator_id=>@gensimple.id)
Type.create(:name=>"Star",:generator_id=>@gensimple.id)
Type.create(:name=>"Full Mesh",:generator_id=>@gensimple.id)
Type.create(:name=>"K-ary Tree",:generator_id=>@gensimple.id)
Type.create(:name=>"Dumbbell",:generator_id=>@gensimple.id)

@gendata=Generator.create(:name=>"FNSS Datacenter")
Type.create(:name=>"Two Tier",:generator_id=>@gendata.id)
Type.create(:name=>"Three Tier",:generator_id=>@gendata.id)
Type.create(:name=>"Bcube",:generator_id=>@gendata.id)
Type.create(:name=>"Fat Tree",:generator_id=>@gendata.id)
@genbrite=Generator.create(:name=>"Brite")
Type.create(:name=>"ASBarabasi",:generator_id=>@genbrite.id)
Type.create(:name=>"ASWaxman",:generator_id=>@genbrite.id)
Type.create(:name=>"RTBarabasi",:generator_id=>@genbrite.id)
Type.create(:name=>"RTWaxman",:generator_id=>@genbrite.id)
Type.create(:name=>"TD_ASBarabasi_RTWaxman",:generator_id=>@genbrite.id)
Type.create(:name=>"TD_ASWaxman_RTWaxman",:generator_id=>@genbrite.id)
@genxml=Generator.create(:name=>"xml")
Type.create(:name=>"xml",:generator_id=>@genxml.id)
#Generator.create(:name=>"Inet")
#Generator.create(:name=>"RocketFuel")




