# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
#
Video.destroy_all

Video.create!([{
name: "video1",
description: "videodescription",
code: "code2"
 },
 {
name: "video2",
description: "videodescription",
code: "code2"
 }
])
