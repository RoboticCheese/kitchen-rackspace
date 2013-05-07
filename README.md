[![Build Status](https://travis-ci.org/RoboticCheese/kitchen-rackspace.png?branch=master)](https://travis-ci.org/RoboticCheese/kitchen-rackspace) [![Code Climate](https://codeclimate.com/github/RoboticCheese/kitchen-rackspace.png)](https://codeclimate.com/github/RoboticCheese/kitchen-rackspace)

# Kitchen::Rackspace

A Rackspace Cloud Servers driver for Test Kitchen 1.0!

Shamelessly copied from [Fletcher Nichol](https://github.com/fnichol)'s
awesome work on an [EC2 driver](https://github.com/opscode/kitchen-ec2).

## Installation

Add this line to your application's Gemfile:

    gem 'kitchen-rackspace'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kitchen-rackspace

## Usage

Provide, at a minimum, the required driver options in your `.kitchen.yml` file:

    driver_plugin: rackspace
    driver_config:
      rackspace_username: [YOUR RACKSPACE CLOUD USERNAME]
      rackspace_api_key: [YOUR RACKSPACE CLOUD API KEY]
      require_chef_omnibus: latest (if you'll be using Chef)

By default, the driver will spawn a 512MB Ubuntu 12.10 instance.
Additional, optional settings can be provided:

    image_id: [SERVER IMAGE ID]
    flavor_id: [SERVER FLAVOR ID]
    name: [A UNIQUE SERVER NAME]
    public_key_path: [PATH TO YOUR PUBLIC SSH KEY]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
