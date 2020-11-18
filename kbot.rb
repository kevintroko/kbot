class KleerBot
    def calcularDescuento(total)
        descuento = 0
        puts "DTO(#{descuento})"
        return descuento
    end
        
    def calcular(cantidad, precio, estado)
        # Diccionario con impuestos
        taxes = {"CAL" => 8.25}
    
        subtotal = cantidad.to_i * precio.to_i
        puts "# #{cantidad} * $#{precio} = $#{subtotal}"
        porcentaje = taxes[estado]
        impuesto = subtotal * porcentaje / 100
        puts "#{estado}(#{porcentaje}) = $#{impuesto}"
        total = subtotal + impuesto
        descuento = calcularDescuento(total)
        
        puts "Total = #{total - descuento}"
    end
end

kleer_bot = KleerBot.new()

puts kleer_bot.calcular(ARGV[0], ARGV[1], ARGV[2])