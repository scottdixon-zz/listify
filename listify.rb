class Listify
  attr_accessor :list
  def initialize
    @list = []
  end
  def add_item (title, qty)
    if title == "Coke"
      title = "Water"
    elsif title == "Butter"
      title = "Cream"
    else
    end
    @list.push({title: title, qty: qty})
  end
  def pretty_list
    pretty_list = ''
    @list.each do |item|
      pretty_list += "#{item[:qty]} x #{item[:title]}\n"
    end
    return pretty_list
  end
  def remove_last_item
    @list.pop
  end
end
