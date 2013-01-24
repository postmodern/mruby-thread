#!mruby

v = "foo"
th = Thread.new(v) do |x|
  puts "in thread: x is #{x}"
  puts "in thread: v is #{v.inspect}" # should be nil
  v = "bar" # shouldn't be updated
end

th.join
puts "in main: v is #{v}" # should be remained as foo
