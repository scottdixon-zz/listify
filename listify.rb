class Listify
  attr_accessor :list
  def initialize
    @list = []
  end

  def add_item (title, qty)

    if title == "Water"
      title = "Coke"
    end

    if title == "Bread"
      title = "Chocolate"
    end
    @list.push({title: title.capitalize, qty: qty})
  end

  def remove_item
    @list.pop
  end


  def pretty_list
    pretty_list = ''
    @list.each do |item|
      pretty_list += "#{item[:qty]} x #{item[:title]}\n"
    end
    return pretty_list
  end
end
