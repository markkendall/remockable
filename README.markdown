# Remockable

A collection of RSpec 2 matchers to simplify your web app specs.


## Background

The goal of this project is to provide a modern replacement to the now
unmaintained Remarkable project. Remarkable was a great asset when Rails 2.3
was current, but now that Rails 3.0 has become mainstream, a gap has been left
by still unreleased Remarkable 4.0.

In looking at the code for Remarkable to determine the feasibility of continuing
work on Remarkable itself, it seems clear that the scope of that project has
outgrown its usefulness for most users. It was with this conclusion in mind that
Remockable was born. It's an attempt to start with a clean slate but maintain
the original goal of Remarkable in spirit.


## Matchers

Remockable currently includes support for all of the Active Model validation
and allow_mass_assignment_of matchers, and also supports the have_column,
have_index, and have_scope Active Record matchers.

More are on the way soon.


## Installation

Add the `remockable` gem to your `Gemfile`:

    gem 'remockable'

Then run `bundle install` to install the gem.

You'll also want to make sure the library is required by RSpec, so add the
following to your `spec_helper.rb` or someone else where it will get loaded
when your specs do:

  require 'remockable'


## Copyright

Copyright © 2010-2011 Tyler Hunt. See LICENSE for details.