class Dictionary
  attr_accessor :entries

  def initialize
    @entries = {}
  end

  def add(opt)
    opt.is_a?(String) ? @entries[opt] = nil : @entries.merge!(opt)
  end

  def keywords
    @entries.keys.sort
  end

  def include?(key)
    @entries.key?(key)
  end

  def find(word)
    @entries.select { |k, value| k.include?(word) }
  end

  def printable
    keywords.map { |key| "[#{key}] \"#{@entries[key]}\"" }.join("\n")
  end
end
