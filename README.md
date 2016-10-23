# GovSchool

GovSchool is an alumni tracking application built for Mississippi Governor's School using
Rails 5.

## Installation

### Prerequisites

You'll need Ruby version 2.3.1. If you don't already, I'd suggest using [rbenv](https://github.com/rbenv/rbenv)
to install new versions of Ruby. 
You'll also need [PostgreSQL](https://www.postgresql.org/) and 
[Elasticsearch](https://www.elastic.co/products/elasticsearch). On MacOS, the easiest way 
to install these is via

```sh
brew install postgres
brew install elasticsearch
```

The output of each command will have information on how to start the services. It'll be
something like `brew services start postgresql`.

### Getting it Running

Once you've met the prerequisites, you'll want to get the code onto your machine. 

```
git clone https://github.com/Mississippi-Governors-School/govschool.git
cd govschool
bundle install
rails db:create && rails db:migrate
rails start
```

Assuming everything was successful, you should not be able to visit 
[http://localhost:3000](http://localhost:3000) and see the site up and running!

### Notes

If you need to reindex the Elasticsearch data, the easiest way is `rails searchkick:reindex:all`.
