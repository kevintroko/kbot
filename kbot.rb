class KleerBot
    def calcularDescuento(total)
        descuento = 0
        porcentaje = 0
        if (total >= 15000) 
            porcentaje = 15
        elsif (total >= 10000) 
            porcentaje = 10
        elsif (total >= 7000) 
            porcentaje = 7
        elsif (total >= 5000) 
            porcentaje = 5
        elsif (total >= 1000) 
            porcentaje = 3
        end
        
        if (porcentaje > 0) 
            descuento = total.to_f * (porcentaje.to_f / 100.0)
        end
        
        puts "DTO(#{porcentaje}%) = $#{descuento}"
        return descuento
    end
        
    def calcular(cantidad, precio, estado)
        # Diccionario con impuestos
        taxes = {"CAL" => 8.25, "UT" => 6.85, "NV" => 8.00}
    
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