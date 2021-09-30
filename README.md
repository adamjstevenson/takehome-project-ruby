# Stripe take home project

This is a simple e-commerce application that a customer can use to purchase a book, but it's missing the payments functionality —  your goal is to integrate Stripe to get this application running!

## Application overview

This demo is written in Ruby with the [Sinatra framework](http://sinatrarb.com/intro.html). You'll need to retrieve a set of testmode API keys from the Stripe dashboard (you can create a free test account [here](https://dashboard.stripe.com/register)) to run this locally.

We're using the [Bootstrap](https://getbootstrap.com/docs/4.6/getting-started/introduction/) CSS framework. It's the most popular CSS framework in the world and is pretty easy to get started with — feel free to modify styles/layout if you like. 

To get started, clone the repository and run bundler to install dependencies:

```
git clone https://github.com/adamjstevenson/takehome-project-ruby.git && cd sa-takehome-project-ruby
bundle install
```

Then run the application locally:

```
ruby server.rb
```

Navigate to [http://localhost:4567](http://localhost:4567) to view the index page.
