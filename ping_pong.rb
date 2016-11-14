class Fixnum
 define_method(:ping_pong) do
  pong_ping_array = []
  self.times() do |time|
   if time == 0
    pong_ping_array.push(time)
   elsif time.%(15) == 0
    pong_ping_array.push("ping_pong")
   elsif time.%(3) == 0
    pong_ping_array.push("ping")
   elsif time.%(5) == 0
    pong_ping_array.push("pong")
   else
    pong_ping_array.push(time)
   end
  end
  pong_ping_array
 end
end
