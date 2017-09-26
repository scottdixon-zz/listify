require 'test/unit'
require_relative 'listify'

class ListifyTest < Test::Unit::TestCase
  def test_empty_list
    shopping = Listify.new
    assert_equal(shopping.list, [])
  end
  def test_add_item
    shopping = Listify.new
    shopping.add_item("Coke", 2)
    assert_equal(shopping.list.size, 1)
  end
  def test_pretty_list
    shopping = Listify.new
    shopping.add_item("Milk", 2)
    assert_equal(shopping.pretty_list, "2 x Milk\n");
  end
  def test_replace_coke_with_water
    # Write your first test here
    shopping = Listify.new
    shopping.add_item("Coke", 2)
    assert_equal(shopping.pretty_list, "2 x Water\n");
  end
  def test_remove_last_item
    shopping = Listify.new
    shopping.add_item("Bread", 2)
    shopping.add_item("Eggs", 2)
    shopping.remove_item
    assert_equal(shopping.pretty_list, "2 x Bread\n")
  end
  def test_capitalize
    shopping = Listify.new
    shopping.capitalize("coke", 2)
    assert_equal(shopping.pretty_list, "2 x Coke\n")
  end
  def test_merge
    shopping = Listify.new
    shopping.merge_item("Bread", 2)
    shopping.merge_item("Bread", 2)
    assert_equal(shopping.pretty_list, "4 x Bread\n")
  end
  def test_file
    shopping = Listify.new
    shopping.add_item("Bread", 2)
    shopping.add_item("Eggs", 4)
    shopping.list_file
    assert_equal(shopping.list, shopping.list_file)
  end
end
