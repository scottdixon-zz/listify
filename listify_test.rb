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
    assert_equal(shopping.pretty_list, "2 x Bread\n");
  end
  def test_replace_coke_with_water
    shopping = Listify.new
    shopping.add_item("Coke", 2)
    assert_equal(shopping.pretty_list, "2 x Water\n");
  end
  def test_replace_milk_with_bread
    shopping = Listify.new
    shopping.add_item("Milk", 2)
    assert_equal(shopping.pretty_list, "2 x Bread\n");
  end

  def test_remove_last_item
    shopping = Listify.new
    shopping.add_item("Coke", 2)
    shopping.remove_item
    assert_equal(shopping.list.size, 0)
  end

  def test_capitalize_item
    shopping = Listify.new
    shopping.add_item("coke", 2)
    assert_equal(shopping.pretty_list, "2 x Coke\n");
  end

  def test_merge_item
    shopping = Listify.new
    shopping.add_item("coke", 2)
    shopping.add_item("coke", 1)
    assert_equal(shopping.pretty_list, "3 x Coke\n");
  end

  def test_file_write
    shopping = Listify.new
    shopping.add_item("Coke", 2)
    shopping.pretty_list
    shopping.write_file
    assert_equal(File.writable?('list.txt'), true)
  end
end
