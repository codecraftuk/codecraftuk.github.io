require 'date'
# Lifted from Rails
class Fixnum
  def ordinalize
    if (11..13).include?(self % 100)
      "#{self}th"
    else
      case self % 10
        when 1; "#{self}st"
        when 2; "#{self}nd"
        when 3; "#{self}rd"
        else    "#{self}th"
      end
    end
  end
end

class EventTag < Liquid::Tag
  def initialize(tag_name, input, tokens)
    super
    @input = input
  end

  # Lookup allows access to the page/post variables through the tag context
  def lookup(context, name)
    lookup = context
    name.split(".").each { |value| lookup = lookup[value] }
    lookup
  end

  def render(context)

    # Accessing the page/site variable for the base url
    title = "#{lookup(context, 'page.title')}"
    start_time = DateTime.parse("#{lookup(context, 'page.startTime')}")
    end_time = DateTime.parse("#{lookup(context, 'page.endTime')}")
    location = "#{lookup(context, 'page.location')}"
    tickets = "#{lookup(context, 'page.tickets')}"

    parsed_date = start_time.strftime("%A #{start_time.day.ordinalize} %B, %Y")
    output =  "<ul>"
    output += "<li>Details - #{title}</li>"
    output += "<li>Date - #{parsed_date}</li>"
    output += "<li>Time - #{start_time.strftime('%H:%M')} - #{end_time.strftime('%H:%M')}</li>"
    output += "<li>Location - #{location}</li>"
    if( !tickets.nil? && !tickets.empty? )
      output += "<li>Tickets - <a href=\"#{tickets}\">Book here</a></li>"
    end
    output += "</ul>"

    return output
  end

  def split_params(params)
    params.split("|")
  end
end
Liquid::Template.register_tag('event_details', EventTag)
