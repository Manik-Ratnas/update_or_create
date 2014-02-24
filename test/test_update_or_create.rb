require  'minitest/autorun'
require_relative 'test_helper'


class FakeUser < ActiveRecord::Base
  def self.needs_attr_accessible?
    ActiveRecord::VERSION::MAJOR == 3
  end

  if needs_attr_accessible?
    attr_accessible :name, :address,:phone
  end
end

class TestDifference < MiniTest::Test

  def setup
    @michael = FakeUser.create!(:name=>"Michael", :address=>'Mumbai')
  end

  def test_update_or_create_by_name_and_address
    @john =FakeUser.update_or_create_by_name_and_address("John","mumbai") do |rec|
             rec.phone = '233-222-333'
           end

    assert_equal('John',@john.name )
    assert_equal('mumbai', @john.address )

  end

    def test_update_or_create_by_name_for_existing_record()
    @michael =FakeUser.update_or_create_by_name("Michael") do |rec|
             rec.phone = '233-222-333'
           end

    assert_equal(@michael.phone, '233-222-333')

  end

 
end
