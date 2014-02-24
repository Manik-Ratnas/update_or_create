# UpdateOrCreate


This gem gives ActiveRecord a method called as update_or_create_by which can be used along with a block to update or create by the arguments passed. 

## Installation

Add this line to your application's Gemfile:

    gem 'update_or_create'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install update_or_create

## Usage

This gem gives ActiveRecord a method called as update_or_create_by which can be used along with a block to update or create by the arguments passed. 

For Eg., 
    irb(main):007:0> User.update_or_create_by_first_name("Manish") do  |rec|
    irb(main):008:1* rec.last_name='Puri'
    irb(main):009:1* rec.sex= 'Male'
    irb(main):010:1> end

     => #<User id: 13, first_name: "Manish", last_name: "Puri", sex: "Male", address: nil, created_at: "2014-02-22 18:35:32", updated_at: "2014-02-22 18:36:16">
    irb(main):010:0> 

You can also use User.update_or_create_by_first_name_and_last_name("Manish","Puri") and pass the block. 



## Contributing

1. Fork it ( http://github.com/manishspuri/update_or_create/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request