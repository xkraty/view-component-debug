ViewComponent::Compiler.class_eval do
  alias_method :original_gather_templates, :gather_templates

  private

  def gather_templates
    puts ">>> EDO"
    puts ActionView::Template.template_handler_extensions.inspect
    puts ">>> EDO"

    original_gather_templates
  end
end