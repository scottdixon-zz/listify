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
    shopping = Listify.new
    shopping.add_item("Coke", 2)
    assert_equal(shopping.pretty_list, "2 x Water\n");
  end
  def test_replace_milk_with_cream
    shopping = Listify.new
    shopping.add_item("Butter", 2)
    assert_equal(shopping.pretty_list, "2 x Cream\n");
  end
  def test_remove_last_item
    shopping = Listify.new
    shopping.add_item("Milk", 2)
    shopping.add_item("Eggs", 2)
    shopping.remove_last_item
    assert_equal(shopping.pretty_list, "2 x Milk\n");
  end
  def test_capitalize_item
    shopping = Listify.new
    shopping.add_item("milk", 2)
    assert_equal(shopping.pretty_list, "2 x Milk\n");
  end
  def test_merge_items
    shopping = Listify.new
    shopping.add_item("Bread", 1)
    shopping.add_item("Bread", 1)
    assert_equal(shopping.pretty_list, "2 x Bread\n");
  end
  def save_to_file

  end
end
