class Listify
  attr_accessor :list
  def initialize
    @list = []
  end
  def add_item(title, qty)
    if title == "Coke"
      title = "Water"
    elsif title == "Butter"
      title = "Cream"
    else
    end
    title.capitalize!

    merged = false
     @list.each_with_index do |item, index|
       if item[:title] == title
         @list[index][:qty] += qty
         merged = true
       end
     end

     if !merged
       @list.push({ title: title, qty: qty })
     end
  end

    #
    # @list.each do |item|
    #   if title == item[:title]
    #     item[:qty] = item[:qty] + qty
    #   end
    # end
    #
    # @list.push({title: title, qty: qty})

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
