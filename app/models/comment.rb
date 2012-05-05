class Comment < ActiveRecord::Base
  acts_as_nested_set
  include TheSortableTree::Scopes
  before_save :prepare_content

  private

  def prepare_content
    self.content = "<b>#{self.raw_content}</b>"
  end
end
