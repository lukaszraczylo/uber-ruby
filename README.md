# Gem for Uber API  ( uber.com )

[![Gem Version](https://badge.fury.io/rb/ubercar.svg)](http://badge.fury.io/rb/ubercar) 
[![Code Climate](https://codeclimate.com/github/lukaszraczylo/uber-ruby/badges/gpa.svg)](https://codeclimate.com/github/lukaszraczylo/uber-ruby)
[![Gratipay](https://img.shields.io/gratipay/lukaszraczylo.svg)](https://gratipay.com/lukaszraczylo/)

This is a Ruby Gem for the uber.com API. It should simplify the process of consuming data from the Uber API for developers using Ruby.

### Installation
Add following to your application Gemfile

```
gem 'ubercars'
```

Then execute

```
$ bundle install
```

Or install it just like that

```
$ gem install ubercars
```

### Usage

It's pretty straightforward. Sample script using UberCars API:

```
{
    "products" => [
        [0] {
                "capacity" => 4,
                   "image" => "http://d1a3f4spazzrp4.cloudfront.net/car-types/mono/mono-uberx.png",
            "display_name" => "uberX",
              "product_id" => "3cb90303-3869-4701-a8fd-92efba468a94",
             "description" => "Cheap, fast & reliable"
        },
        [1] {
                "capacity" => 6,
                   "image" => "http://d1a3f4spazzrp4.cloudfront.net/car-types/mono/mono-uberXL_london.png",
            "display_name" => "uberXL",
              "product_id" => "d9b19d17-f013-4b98-9b3f-cf5a9e91d2aa",
             "description" => "Spacious, Convenient Comfort"
        },
        [2] {
                "capacity" => 4,
                   "image" => "http://d1a3f4spazzrp4.cloudfront.net/car-types/mono/mono-black.png",
            "display_name" => "UberEXEC",
              "product_id" => "34a6cad0-0629-4ca0-ae68-ed0cea7695ca",
             "description" => "Discreet executive quality"
        },
        [3] {
                "capacity" => 4,
                   "image" => "http://d1a3f4spazzrp4.cloudfront.net/car-types/mono/mono-lux.png",
            "display_name" => "UberLUX",
              "product_id" => "ea52c793-1ad7-4c46-96b3-b1836b8cd0f9",
             "description" => "Ultimate luxury & style"
        },
        [4] {
                "capacity" => 5,
                   "image" => "http://d1a3f4spazzrp4.cloudfront.net/car-types/mono/mono-blacktaxi2.png",
            "display_name" => "UberTAXI",
              "product_id" => "6a6629df-3400-4e4b-8742-ebd79bf4ef99",
             "description" => "Iconic, Knowledgeable & Versatile"
        }
    ]
}
{
    "prices" => [
        [0] {
            "localized_display_name" => "uberX",
                          "duration" => 393,
                      "low_estimate" => "5",
                      "display_name" => "uberX",
                        "product_id" => "3cb90303-3869-4701-a8fd-92efba468a94",
                          "distance" => 1.44,
                  "surge_multiplier" => 1.0,
                          "estimate" => "£5-6",
                     "high_estimate" => "6",
                     "currency_code" => "GBP"
        },
        [1] {
            "localized_display_name" => "uberXL",
                          "duration" => 393,
                      "low_estimate" => "7",
                      "display_name" => "uberXL",
                        "product_id" => "d9b19d17-f013-4b98-9b3f-cf5a9e91d2aa",
                          "distance" => 1.44,
                  "surge_multiplier" => 1.0,
                          "estimate" => "£7-9",
                     "high_estimate" => "9",
                     "currency_code" => "GBP"
        },
        [2] {
            "localized_display_name" => "UberEXEC",
                          "duration" => 393,
                      "low_estimate" => "10",
                      "display_name" => "UberEXEC",
                        "product_id" => "34a6cad0-0629-4ca0-ae68-ed0cea7695ca",
                          "distance" => 1.44,
                  "surge_multiplier" => 1.0,
                          "estimate" => "£10",
                     "high_estimate" => "10",
                     "currency_code" => "GBP"
        },
        [3] {
            "localized_display_name" => "UberLUX",
                          "duration" => 393,
                      "low_estimate" => "14",
                      "display_name" => "UberLUX",
                        "product_id" => "ea52c793-1ad7-4c46-96b3-b1836b8cd0f9",
                          "distance" => 1.44,
                  "surge_multiplier" => 1.0,
                          "estimate" => "£14",
                     "high_estimate" => "14",
                     "currency_code" => "GBP"
        },
        [4] {
            "localized_display_name" => "UberTAXI",
                          "duration" => 393,
                      "low_estimate" => nil,
                      "display_name" => "UberTAXI",
                        "product_id" => "6a6629df-3400-4e4b-8742-ebd79bf4ef99",
                          "distance" => 1.44,
                  "surge_multiplier" => 1.0,
                          "estimate" => "Metered",
                     "high_estimate" => nil,
                     "currency_code" => nil
        }
    ]
}
{
    "times" => [
        [0] {
            "localized_display_name" => "uberX",
                          "estimate" => 508,
                      "display_name" => "uberX",
                        "product_id" => "3cb90303-3869-4701-a8fd-92efba468a94"
        },
        [1] {
            "localized_display_name" => "UberEXEC",
                          "estimate" => 381,
                      "display_name" => "UberEXEC",
                        "product_id" => "34a6cad0-0629-4ca0-ae68-ed0cea7695ca"
        },
        [2] {
            "localized_display_name" => "UberLUX",
                          "estimate" => 576,
                      "display_name" => "UberLUX",
                        "product_id" => "ea52c793-1ad7-4c46-96b3-b1836b8cd0f9"
        }
    ]
}
{
       "display_text" => "£10 account credit",
    "localized_value" => "£10",
               "type" => "account_credit"
}
"https://m.uber.com/sign-up?client_id=bananaPotatoKey&"
```
