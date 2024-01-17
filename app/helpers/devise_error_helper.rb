module DeviseErrorHelper
    def display_errors(resource, attribute)
        return unless resource.errors[attribute].present?
      
        content_tag(:div, class: 'error-messages') do
          resource.errors[attribute].join(', ')
        end
      end
    private
  
    def error_messages(resource, field)
      field_name = field.to_s.humanize
      messages = resource.errors[field].map { |message| "#{field_name} #{message}" }
      messages.join(", ")
    end
  end
  