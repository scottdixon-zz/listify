class Listify
  attr_accessor :list
  def initialize
    @list = []
  end
  def add_item (title, qty)
    title = "Water" if title == "Coke"
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
  def remove_last
    @list.delete_at(-1)
  end
  def pretty_list
    pretty_list = ''
    @list.each do |item|
      pretty_list += "#{item[:qty]} x #{item[:title]}\n"
    end
    return pretty_list
  end
  def save_list
    file = File.open("new_listify_list.txt", 'w') {|f| f.write(pretty_list) }
  end
end
