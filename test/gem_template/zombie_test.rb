require 'test_helper'

module GemTemplate
  class ZombieTest < Minitest::Test
    def setup
      # runs before each test
      @zombie = Zombie.new
    end

    def test_zombie_is_zombie
      assert_instance_of(Zombie, @zombie, "Zombie should be zombie")
    end

    def test_zombie_needs
      assert_equal('brains', @zombie.needs, 'Zombie need brains')
    end

    def teardown
      # runs after each test
    end
  end
end
