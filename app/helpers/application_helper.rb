module ApplicationHelper
  def component(name, locals = {}, &block)
    render "components/#{name}", locals, &block
  end
end
