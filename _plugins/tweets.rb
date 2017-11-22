require 'date'
require 'active_support/all'

module Jekyll

  class LeanCoffeeTweets
    def content(date, url, location)
      output = "# Lean Coffee"

      output += "\n\n ** #{date.beginning_of_month} @ 8AM (start of the month)"
      output += "\nOur #{date.strftime('%B')} event is a Lean Coffee on #{date.strftime('%A') + ' ' + date.day.ordinalize + ' ' + date.strftime('%B')}, 7pm, in #{location}. #{url}"

      output += "\n\n ** #{date.beginning_of_week(:sunday)} @ 3PM (Sunday before)"
      output += "\nThis month’s event is a Lean Coffee. If you’ve not been before Lean Coffees are a great place to see what we do. #{url}"

      output += "\n\n ** #{date.beginning_of_week(:monday)} @ 8AM (Start of week)"
      output += "\nREMINDER: Lean Coffee event is this #{date.strftime('%A')}, at 7pm, in #{location}. Come and chat about crafting software: #{url}"

      output += "\n\n ** #{date.yesterday} @ 8AM (Day before)"
      output += "\nREMINDER: CodeCraft is tomorrow! A Lean Coffee event in #{location}: #{url}"

      output += "\n\n ** #{date} @ 8AM (On the day)"
      output += "\nREMINDER: Our Lean Coffee event is tonight! 7pm, #{location}. #{url}"

      output += "\n\n =============================== \n\n"

      output
    end
  end

  class GuidedConversationTweets
    def content(date, url, location)
      topic = 'Deployment'

      output = "# Guided Conversation"

      output += "\n\n ** #{date.beginning_of_month} @ 8AM (start of the month)"
      output += "\nOur #{date.strftime('%B')} event is a Guided Conversation on #{topic} on #{date.strftime('%A') + ' ' + date.day.ordinalize + ' ' + date.strftime('%B')}, 7pm, in #{location}. #{url}"

      output += "\n\n ** #{date.beginning_of_week(:sunday)} @ 3PM (Sunday before)"
      output += "\nThis month’s event is a Guided Conversation on #{topic} on #{date.strftime('%A') + ' ' + date.day.ordinalize + ' ' + date.strftime('%B')}, in #{location}. #{url}"

      output += "\n\n ** #{date.beginning_of_week(:monday)} @ 8AM (Start of week)"
      output += "\nGuided Conversation on #{topic} is this #{date.strftime('%A')}, at 7pm, in #{location}. Come and chat about crafting software: #{url}"

      output += "\n\n ** #{date.yesterday} @ 8AM (Day before)"
      output += "\nREMINDER: CodeCraft is tomorrow! A Guided Conversation on #{topic} in #{location}: #{url}"

      output += "\n\n ** #{date} @ 8AM (On the day)"
      output += "\nREMINDER: Our Guided Conversation on #{topic} is tonight! 7pm, #{location}. #{url}"

      output += "\n\n =============================== \n\n"

      output
    end
  end

  class SpecialEventTweets
    def content(date, url, location)
      topic = 'session on good technical interviews'

      output = "# Special Event"

      output += "\n\n ** #{date.beginning_of_month} @ 8AM (start of the month)"
      output += "\nOur #{date.strftime('%B')} event is a #{topic} on #{date.strftime('%A') + ' ' + date.day.ordinalize + ' ' + date.strftime('%B')}, 7pm, in #{location}. #{url}"

      output += "\n\n ** #{date.beginning_of_week(:sunday)} @ 3PM (Sunday before)"
      output += "\nThis month’s event is a #{topic} on #{date.strftime('%A') + ' ' + date.day.ordinalize + ' ' + date.strftime('%B')}, in #{location}. #{url}"

      output += "\n\n ** #{date.beginning_of_week(:monday)} @ 8AM (Start of week)"
      output += "\nREMINDER: Our #{topic} is this #{date.strftime('%A')}, at 7pm. Come and chat about crafting software: #{url}"

      output += "\n\n ** #{date.yesterday} @ 8AM (Day before)"
      output += "\nREMINDER: CodeCraft is tomorrow! A #{topic} in #{location}: #{url}"

      output += "\n\n ** #{date} @ 8AM (On the day)"
      output += "\nREMINDER: Our #{topic} is tonight! 7pm, #{location}. #{url}"

      output += "\n\n =============================== \n\n"

      output
    end
  end

  class PageWithoutAFile < Page
    def read_yaml(*)
      @data ||= {}
    end
  end

  class ArchiveGenerator < Generator
    def generate(site)
      date = Date.new(2017,4,20)
      url = 'https://www.meetup.com/meetup-group-SHqOxMXh/events/238878457/'
      location = "The South Block"

      page = PageWithoutAFile.new(site, site.dest, "", "tweets.txt")
      page.content = LeanCoffeeTweets.new.content(date, url, location) + GuidedConversationTweets.new.content(date, url, location) + SpecialEventTweets.new.content(date, url, location)
      site.pages << page
    end
  end

end
