# Kribruby

Kribrum API gem

## Installation

Add this line to your application's Gemfile:

    gem 'kribruby'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kribruby

## Usage

All you need is to define two variables. By security reasons you must set them for application process

* `KRBRB_SECRET`  – your Kribrum API key
* `KRBRB_OBJECT_ID` – Kribrum object ID for your report

So, you should run your app

    KRBRB_SECREt=mysecret KRBRB_OBJECT_ID=myobjectid run app

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
