require 'liquid'
require 'date'
require 'add_to_calendar'

module Jekyll
  class CalendarLinkTag < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      super
      @markup = markup.strip
    end

    def render(context)
      event = context['page']
      start_date = DateTime.parse(event['start_date']).to_time
      end_date = DateTime.parse(event['end_date']).to_time

      cal = AddToCalendar::URLs.new(
        start_datetime: start_date, 
        end_datetime: end_date, 
        title: "CodeCraft: " + event['title'], 
        timezone: 'Europe/London',
        location: event['location'],
        description: event['description'],
      )

      "<a href='#{cal.google_url}'>Google Calendar</a> |
       <a href='#{cal.outlook_com_url}'>Outlook</a> |
       <a href='#{cal.office365_url}'>Office 365</a> |
       <a download='calendar-event.ics' href='#{cal.ical_url}'>iCal</a>"
    end
  end
end

Liquid::Template.register_tag('calendar_link', Jekyll::CalendarLinkTag)
