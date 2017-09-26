class Listify
  attr_accessor :list
  def initialize
    @list = []
  #  @title = []
  end

  def add_item (title, qty)

    if title == "Water"
      title = "Coke"
    end

    if title == "Milk"
      title = "Chocolate"
    end

    merged = false
  @list.each_with_index do |item, index|
    if item[:title] == title
      @list[index][:qty] += qty
      merged = true
    end
  end

  if !merged
    @list.push({ title: title.capitalize, qty: qty })
  end
  end


  def remove_item
    @list.pop
  end

#   def merge_item(title)
#     # if title == Lollies
#     #    title = Lollies + 1
# # Lollies.qty =
#     end
#     @list.push({title: title.capitalize, qty: qty})
#   end

  def pretty_list
    pretty_list = ''
    @list.each do |item|
      pretty_list += "#{item[:qty]} x #{item[:title]}\n"
    end
    return pretty_list
  end
end
