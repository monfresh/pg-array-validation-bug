## Installation

    git clone https://github.com/monfresh/pg-array-validation-bug.git
    cd pg-array-validation-bug
    bundle install
    rake db:create
    rake db:schema:load

## Create a new Location in the console

    rails c
    Location.create!(languages: "english")
    => ActiveRecord::RecordInvalid: Validation failed: Languages must be an array.

    Location.create!(emails: "foo@bar.com")
    => #<Location id: 2, languages: nil, emails: [], created_at: "2014-04-11 20:26:35", updated_at: "2014-04-11 20:26:35
