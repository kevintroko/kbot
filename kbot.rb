class KleerBot
    def calcular(cantidad)
        puts cantidad
    end
end

kleer_bot = KleerBot.new()

puts kleer_bot.calcular(ARGV[0])