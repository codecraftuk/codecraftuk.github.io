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
      date = start_date.strftime('%Y-%m-%d')
      file_name = "#{date}_#{event['title'].downcase.gsub(' ', '_')}.ics"
      file_path = File.join('_site', 'events', file_name)


      FileUtils.mkdir_p(File.dirname(file_path))
      File.open(file_path, "w") { |f| f.write(cal_content) }

      "<a href=\"/events/#{file_name}\" download=\"#{file_name}\" rel=\"nofollow\">Add to Calendar</a>"
    end
  end
end

Liquid::Template.register_tag('calendar_link', Jekyll::CalendarLinkTag)
