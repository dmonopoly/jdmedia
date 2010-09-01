# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Mayor.create(:name => 'Daley', :city => cities.first)
User.create(:login=>'dakota', :password=>'northandsouth', :password_confirmation=>'northandsouth')

Category.create(:name=>'Animation')
Category.create(:name=>'Film')

Genre.create(:name=>'Action')
Genre.create(:name=>'Comedy')
Genre.create(:name=>'Drama')
Genre.create(:name=>'Music Video')
Genre.create(:name=>'Other')