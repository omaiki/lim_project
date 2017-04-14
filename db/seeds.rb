# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  url_params = Hash.new
  url_params[:page_url] = "www.google.com"
  url_params[:page_content] = {
title: "TestChat",
location: 70,
abstract: "TestChat",
id: 1,
user: {
username: nil,
first_name: nil,
last_name: nil,
location: nil,
info: nil
},
messages: [
{
content: "test_content",
abstract: "test_content",
id: 1
}
]
}

new_url = Url.create(url_params)

