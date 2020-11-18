class KleerBot
    def calcular(cantidad, precio, estado)
        total = cantidad.to_i * precio.to_i
        puts "# #{cantidad} * $#{precio} = $#{total}"
        puts estado
    end
end

kleer_bot = KleerBot.new()

puts kleer_bot.calcular(ARGV[0], ARGV[1], ARGV[2])