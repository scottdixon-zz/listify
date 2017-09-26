class Listify
  attr_accessor :list
  def initialize
    @list = []
  end
  def add_item (title, qty)
    if title == "Coke"
      title = "Water"
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
  def remove_item
    @list.pop
  end
  def capitalize(title, qty)
    @list.push({title: title.capitalize, qty: qty})
  end
  def merge_item(title, qty)
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
  def list_file
    File.write("new_listify_list.rb", @list)
    file = File.open("new_listify_list.rb")
    contents = file.read
    return contents
  end
end
