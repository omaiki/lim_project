
# URL Parser

* REST API to Parse URL's source code for HTML content (h1, h2, h3, and link tags) 
* Included simple front-end welcome page to show functionality 

## Demo

* [Demo deployed through Heroku](https://lim-url-parser.herokuapp.com)

## Tech stack

* Ruby on Rails
* PostgreSQL
* Nokogiri / OpenURI

## Instructions

* run 'bundle install' in terminal
* run 'rails s' in terminal
* visit 'localhost:3000' in browser to see welcome page
* Enter in full URL address to be parsed

### Routing

* 'localhost:3000/urls' will reveal all parsed URLs in database
* '#/urls/:id/url_contents' will reveal all content for HTML h1, h2, h3, and link tags for a specific URL


### Tips

* Use chrome extension 'JSON Viewer' to see a much clearer depiction of JSON data from parsed HTML content

## Testing

* To run Rspec testing suite, run 'rspec -fd spec' after 'bundle install'

