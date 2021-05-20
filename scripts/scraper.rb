require 'benchmark'

N = 1_000_000

puts RUBY_VERSION

STR = "[12,23,987,43"

Benchmark.bm(7) do |b|
  b.report('[0]') { N.times { "[12,23,987,43"[0] = '' } }
  b.report('sub') { N.times { "[12,23,987,43".sub(/^\[+/, "") } }

  b.report('gsub') { N.times { "[12,23,987,43".gsub(/^\[/, "") } }
  b.report('[1..-1]') { N.times { "[12,23,987,43"[1..-1] } }
  b.report('slice') { N.times { "[12,23,987,43".slice!(0) } }
  b.report('length') { N.times { "[12,23,987,43"[1..STR.length] } }

end

casecmp