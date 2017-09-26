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

  def test_remove_last_item
    shopping = Listify.new
    shopping.add_item("Coke", 2)
    shopping.add_item("Bread", 2)
    shopping.last_item_delete

    assert_equal(shopping.pretty_list, "2 x Water\n");
  end

  def test_captialize
    shopping = Listify.new
    shopping.add_item("bread", 2)

    assert_equal(shopping.pretty_list, "2 x Bread\n");
  end

  def test_merge_items
    shopping = Listify.new
    shopping.add_item("cheese", 2)
    shopping.add_item("cheese", 1)
    assert_equal(shopping.pretty_list, "3 x Cheese\n");
  end

  def test_list_save
    shopping = Listify.new
    shopping.add_item("cheese", 2)
    shopping.write_file
    file = File.open("list.txt", "r")
    contents = file.read
    assert_equal(contents, "[{:title=>\"Cheese\", :qty=>2}]");
  end

end
