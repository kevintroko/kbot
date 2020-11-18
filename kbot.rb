class KleerBot
    def calcular(cantidad, precio)
        puts "# #{cantidad} $#{precio}"
    end
end

kleer_bot = KleerBot.new()

puts kleer_bot.calcular(ARGV[0], ARGV[1])