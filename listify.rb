class Listify
  attr_accessor :list
  def initialize
    @list = []
  end
  def add_item (title, qty)
    if title == "Coke"
      title = "Water"
    elsif title == "Milk"
      title = "Bread"
    end

    merged = false
    @list.each_with_index do |item, index|
      if item[:title] == title.capitalize
        @list[index][:qty] += qty
        merged = true
      end
    end

    if !merged
      @list.push({ title: title.capitalize, qty: qty })
    end

  end

  def pretty_list
    pretty_list = ''
    @list.each do |item|
      pretty_list += "#{item[:qty]} x #{item[:title]}\n"
    end
    return pretty_list
  end
  def remove_item
    @list.pop
  end

  def write_file
    File.write('list.txt', pretty_list)
  end

end
