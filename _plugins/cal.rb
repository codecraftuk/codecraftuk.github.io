require 'liquid'
require 'icalendar'
require 'date'

module Jekyll
  class CalendarLinkTag < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      super
      @markup = markup.strip
    end

    def render(context)
      event = context['page']
      start_date = DateTime.parse(event['start_date'])
      end_date = DateTime.parse(event['end_date'])

      cal = Icalendar::Calendar.new
      cal.event do |e|
        e.dtstart = start_date
        e.dtend = end_date
        e.summary = "CodeCraft"
        e.description = event['description']
        e.location = event['location']
      end

      cal_content = cal.to_ical
      base64_cal_content = Base64.strict_encode64(cal_content)

      "<a href=\"data:text/calendar;base64,#{base64_cal_content}\" download=\"#{event['title'].downcase.gsub(' ', '_')}.ics\">Add to your calendar</a>"
    end
  end
end

Liquid::Template.register_tag('calendar_link', Jekyll::CalendarLinkTag)
