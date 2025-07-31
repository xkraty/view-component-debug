class ApplicationComponent < ViewComponent::Base
  # Add this temporarily to see what ViewComponent is looking for
  def self.inherited(subclass)
    puts ">>> ViewComponent looking for: #{subclass.name}"
    puts ">>> Template files found: #{subclass.sidecar_files(ActionView::Template.template_handler_extensions)}"
    super
  end

  # def self.sidecar_files(extensions)
  #   puts "sidecar_files called with: #{extensions.inspect}"
  #   # puts "Caller: #{caller[0..2]}"

  #   # Fix the extensions and continue
  #   # normalized_extensions = extensions.map { |ext| ext.start_with?(".") ? ext[1..-1] : ext }
  #   super(extensions)
  # end
end