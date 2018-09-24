class ImagePresenter < SimpleDelegator
  class NotImplementedError < StandardError; end;

  attr_accessor :helpers, :record
  def initialize(record, helpers)
    @helpers = helpers
    @record = record
    super(record)
  end

  def hero_painting
    raise_not_implemented("hero_painting")
  end

  def link
    raise_not_implemented("link")
  end

  def url
    raise_not_implemented("url")
  end

  private
  def raise_not_implemented(method_name)
    raise NotImplementedError.new("The method #{method_name} must be implemented in a child class")
  end

end
