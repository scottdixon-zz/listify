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
    shopping.add_item("Water", 2)
    assert_equal(shopping.pretty_list, "2 x Coke\n");
  end

  def test_replace_milk_with_chocolate
    shopping = Listify.new
    shopping.add_item("Bread", 2)
    assert_equal(shopping.pretty_list, "2 x Chocolate\n");
  end

  def test_remove_last_item
    shopping = Listify.new
    shopping.add_item("Wine", 2)
    shopping.add_item("Brine", 1)
    shopping.remove_item
    assert_equal(shopping.pretty_list, "2 x Wine\n");
  end

  def capitalize_list
    shopping = Listify.new
    shopping.add_item("gravy", 2)
    assert_equal(shopping.pretty_list, "2 x Gravy\n");
  end

  # def merge_items
  #   shopping = Listify.new
  #   shopping.add_item("")
  # end
end
