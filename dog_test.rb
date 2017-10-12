require 'minitest/autorun'
require_relative 'animals'
require_relative 'dog'

class DogTest < Minitest::Test
    def setup
        @dog = Dog.new("")
    end

    def test_initialize_with_no_arguments
        assert_equal 0, @dog.speed
    end

    def test_if_speed_is_an_accessible_property
        @dogspeed = 12 
        assert_equal @dogspeed, 12
    end

    def test_if_speed_is_a_number
        @dog.speed = 2
        assert_instance_of Integer, @dog.speed
        @dog.speed = 2.4
        assert_instance_of Float, @dog.speed
    end

    def test_instance_of_dog
        assert_instance_of Dog, @dog
    end

end