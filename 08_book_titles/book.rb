# object for capitalizing book titles correctly
class Book
  attr_accessor :title

  def title
    @title.capitalize!
    @title.split(' ').map { |w| LIST.include?(w) ? w : w.capitalize }.join(' ')
  end

  LIST = %w[a and it the in an over of].freeze
end
