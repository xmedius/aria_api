# AriaBilling [![Build Status](https://secure.travis-ci.org/jpemberthy/aria_billing.png)](http://travis-ci.org/jpemberthy/aria_billing)

Ruby wrap for the aria billing and subscriptions API.

## Installation

    gem install aria_billing

For Rails Apps. Just add this to Gemfile.

    gem "aria_billing"

## Configuration

First you'll need to define your credentials:

    AriaBilling::Configuration.auth_key = "the-key"
    AriaBilling::Configuration.client_no = "the-client"
    AriaBilling::Configuration.url = "https://secure.future.stage.ariasystems.net/api/ws/api_ws_class_dispatcher.php"

In Rails. You could define specific configuration for each environment.

There's also a parameter to define the version of the Aria API you want to use. Default is 5.14

    AriaBilling::Configuration.api_version = "5.15"


## Usage

AriaBilling supports most of the API features defined in [https://developer.ariasystems.net/apidocs/web/app.php/api_docs](https://developer.ariasystems.net/apidocs/web/app.php/api_docs).

Just call the service name as an AriaBilling method, the options are the same as the specified in the API docs.

    AriaBilling.get_country_from_ip(ip_address: "207.97.227.239")
    # { "country_code" => "US", "country_name" => "United States", "error_code" => 0, "error_msg" => "OK" }

Note you don't need to pass credentials since they're already defined in the configuration module.

## Demo Application

pending
