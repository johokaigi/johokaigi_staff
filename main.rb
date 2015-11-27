require 'date'

class Issue
  attr_accessor :content, :date

  def initialize(content, date)
    @content = content
    @date = date
  end

  def title
    "#{@date.strftime('%Y/%m/%d')}までに#{@content}"
  end

  def publish
    `git issue create -m '#{title}'`
  end
end

class IssueFactory
  REG = /([+-]?\d+) (.*)/
  def self.create(line, event_date)
    match = REG.match(line)
    if match
      Issue.new(match[2], event_date + match[1].to_i)
    else
      Issue.new(line, event_date)
    end
  end
end

class Reader
  def initialize(event_date)
    @event_date = event_date
  end

  def read_issues
    raw = read
    filter(raw.split("\n")).map { |e| IssueFactory.create(e, @event_date) }
  end

  private

  def read
    File.read('event_issues.txt')
  end

  def filter(lines)
    lines.map(&:strip).reject do |line|
      line.empty? || line[0] == '#'
    end
  end
end

puts '次のイベントいつになったの？(yyyy-mm-dd)'
event_date = Date.parse(gets)
Reader.new(event_date).read_issues.each(&:publish)
