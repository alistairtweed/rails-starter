class CustomFormBuilder < ActionView::Helpers::FormBuilder
  def check_box(method, options = {}, checked_value = "1", unchecked_value = "0")
    @template.content_tag(:label,
      @template.check_box(
        @object_name, method, objectify_options(options), checked_value, unchecked_value
      ) + options[:label],
      class: "CheckBox #{options[:class]}"
    )
  end

  def date_field(method, options = {})
    options[:class] = "TextField w-auto #{options[:class]}"
    options[:placeholder] ||= method
    super(method, options)
  end

  def date_select(method, options = {}, html_options = {})
    options[:order] = [:day, :month, :year]
    options[:prompt] = { day: "Day", month: "Month", year: "Year" }
    html_options[:class] = "Select #{html_options[:class]}"
    super(method, options, html_options)
  end

  def datetime_field(method, options = {})
    options[:class] = "TextField w-auto #{options[:class]}"
    super(method, options)
  end

  def datetime_select(method, options = {}, html_options = {})
    options[:order] = [:day, :month, :year, :hour, :minute]
    options[:prompt] = { day: "Day", month: "Month", year: "Year", hour: "Hour", minute: "Minute" }
    html_options[:class] = "Select #{html_options[:class]}"
    super(method, options, html_options)
  end

  def email_field(method, options = {})
    options[:class] = "TextField #{options[:class]}"
    options[:placeholder] ||= method
    super(method, options)
  end

  def file_field(method, options = {})
    options[:class] = "w-full #{options[:class]}"
    super(method, options)
  end

  def label(method, text = nil, options = {})
    options[:class] = "FormLabel #{options[:class]}"
    super(method, text, options)
  end

  def multi_check_box(method, choices = [], options = {})
    options[:multiple] = true
    choices.map do |label, value|
      @template.content_tag(:div,
        @template.content_tag(:label,
          @template.check_box(
            @object_name, method, objectify_options(options), value, false
          ) + label,
          class: "CheckBox #{options[:class]}"
        )
      )
    end.join.html_safe
  end

  def password_field(method, options = {})
    options[:placeholder] ||= method
    @template.content_tag(
      :div,
      @template.tag(
        :input,
        ":type": "reveal ? 'text' : 'password'",
        name: "#{@object_name}[#{method}]",
        id: "#{@object_name}_#{method}",
        class: "TextField pr-11 #{options[:class]}",
        placeholder: options[:placeholder].to_s.humanize
      ) + @template.content_tag(
        :div,
        @template.content_tag(
          :div,
          @template.component(:icon, name: "hide"),
          "x-show": "reveal"
        ) + @template.content_tag(
          :div,
          @template.component(:icon, name: "show"),
          "x-show": "!reveal"
        ),
        class: "absolute right-3 top-1/2 -translate-y-1/2 transform cursor-pointer text-gray-600",
        "@click": "reveal = !reveal"
      ),
      class: "relative",
      "x-data": "{ reveal: false }"
    )
  end

  def radio_button(method, tag_value, options = {})
    @template.content_tag(:label,
      @template.radio_button(
        @object_name, method, tag_value, objectify_options(options)
      ) + options[:label],
      class: "RadioButton #{options[:class]}"
    )
  end

  def reset_button(value = "Reset", options = {})
    options[:class] = "Button --outline #{options[:class]}"
    options[:type] = "reset"
    @template.button_tag(value, objectify_options(options))
  end

  def select(method, choices = nil, options = {}, html_options = {})
    html_options[:class] = "Select #{html_options[:class]}"
    super(method, choices, options, html_options)
  end

  def submit(value = nil, options = {})
    options[:class] = "Button #{options[:class]}"
    super(value, options)
  end

  def text_area(method, options = {})
    options[:class] = "TextArea #{options[:class]}"
    options[:placeholder] ||= method
    super(method, options)
  end

  def text_field(method, options = {})
    options[:class] = "TextField #{options[:class]}"
    options[:placeholder] ||= method
    super(method, options)
  end

  def time_field(method, options = {})
    options[:class] = "TextField w-auto #{options[:class]}"
    super(method, options)
  end

  def time_select(method, options = {}, html_options = {})
    options[:prompt] = { hour: "Hour", minute: "Minute" }
    html_options[:class] = "Select #{html_options[:class]}"
    super(method, options, html_options)
  end

  def time_zone_select(method, priority_zones = nil, options = {}, html_options = {})
    html_options[:class] = "Select #{html_options[:class]}"
    super(method, priority_zones, options, html_options)
  end

  def weekday_select(method, options = {}, html_options = {})
    html_options[:class] = "Select #{html_options[:class]}"
    super(method, options, html_options)
  end
end
