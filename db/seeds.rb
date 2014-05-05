# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Report.delete_all
Report.create(title: 'Water Quality Report', author: 'John Smith', published: true)
Report.create(title: 'Smog Days and Air Quality', author: 'Jane Jones', published: true)
Report.create(title: '2013 Bird Migration', author: 'Feathered Friend', published: false)
