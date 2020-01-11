module ApplicationHelper
  def create_random_string(length)
    rand(36**length).to_s(36) + ' '
  end

  def create_content(content_length)
    word_length = 12
    return_string = ''
    (content_length/word_length).to_i.times do|n|
      return_string += create_random_string(word_length)
    end
    return_string.strip
  end

  def is_nested_comment?(comment)
    comment.commentable_type == 'Comment'
  end
end
