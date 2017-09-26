require 'test/unit'
require_relative 'listify'

class ListifyTest < Test::Unit::TestCase
  def test_empty_list
    shopping = Listify.new
    assert_equal(shopping.list, [])
  end

def test_list_title
  shopping=Listify.new
  shopping.title= "Shopping List"
  assert_equal(shopping.title, "Shopping List")
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
    # Write your first test here
  end

  def test_remove_item
    shopping = Listify.new
    shopping.add_item("Bread", 2)
    shopping.add_item("Water", 2)
    shopping.remove_item
    assert_equal(shopping.pretty_list, "2 x Bread\n");
  end

  def test_capatalize_item
    shopping = Listify.new
    shopping.add_item("bread", 2)
    assert_equal(shopping.pretty_list, "2 x Bread\n");
  end

  def add_item
    shopping = Listify.new
    shopping.add_item("Bread", 2)
    shopping.add_item("Bread", 2)
    assert_equal(shopping.pretty_list, "4 x Bread\n");
  end


end
