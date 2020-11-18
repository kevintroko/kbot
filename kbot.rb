class KleerBot
    def calcular(cantidad, precio, estado)
        taxes = {"CAL" => 8.25}
        total = cantidad.to_i * precio.to_i
        puts "# #{cantidad} * $#{precio} = $#{total}"
        puts "#{estado}(#{taxes[estado]})"
    end
end

kleer_bot = KleerBot.new()

puts kleer_bot.calcular(ARGV[0], ARGV[1], ARGV[2])