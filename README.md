# Rails Api with Authentication

This is the accompanying source code to my video on putting together your own API from
scratch using Ruby on Rails.

Video available here: https://youtu.be/8cJuXjCZ36Q

## Developer Install

- ensure you've got ruby `2.7.5` and rails `6.1.7` available on your machine
- `git clone git@github.com:wazooinc/rails-api-with-authentication.git`
- `cd rails-api-with-authentication`
- `bundle install`

## Database Setup

For the purposes of this exercise, we're using the default SQLite3 development database
that ships with the Rails generator. You have the freedom of taking advantage of another
relational database such as MySQL or Postgres.

Just update the `database.yml` configuration with your database details.

## Swagger Documentation

We've included some help from Swagger to generate API documentation for this API.

- Update appropriate `request/*_spec.rb` with API methods
- Run `rake rswag` to generate
- Once the server's running, the docs are available via browser at `/api-docs`

## Future Considerations and TODO

Depending on your API delivery needs and specific use case, there's always room for improvement on a project
like this:
- Update specs
- One option is to introduce an API Gateway through something like AWS to cache often repeated requests on more static-y data responses
- There are many types of API architecture out there for authentication, authorization and design
- ...

## LICENSE

Copyright 2022 Wazoo Enterprises Inc.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
