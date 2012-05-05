class CommentsController < ApplicationController
  include TheSortableTreeController::Rebuild

  def index
    @comments = Comment.nested_set.all
  end

  def manage
    @comments = Comment.nested_set.all
  end

  def tree
    @comments = Comment.nested_set.all
  end
end
