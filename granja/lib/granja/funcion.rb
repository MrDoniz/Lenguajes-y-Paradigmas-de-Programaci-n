
module Funciones
  # Constantes que define el la condición de vida de la granja.
  JAULAS = "jaulas"
  CAMPO_ABIERTO = "campo abierto"
  
  # Método cuidados: para proporcionar antibioticos a los animales 
  def Funciones.cuidados(valor, lista_animal)
    if (lista_animal).is_a?Enumerable
      lista_animal.collect { |animal| animal + valor }
    elsif
      false
    end
  end
  
  # Método reproduccion: para seleccionar los animales listos para su reproducción
  def Funciones.reproduccion(valor, lista_animal)
    if (lista_animal).is_a?Enumerable
      lista_animal.select { |animal| animal.edad > valor}  
    elsif
      false
    end
  end

  # Método bienestar_animal: Calcula el bienestar animal dado una granja
  # Media del peso/edad -> media
  # Valor máximo del ratio peso/edad -> max
  # (media(peso/edad) * 100)/max ó (media(peso/edad) * 50) / max.
  def Funciones.bienestar_animal(conditions, granja) 
    if conditions == CAMPO_ABIERTO
      ((granja.lista_aves.collect { |item| item.peso / item.edad }.reduce{ |sum, n| sum + n } / granja.lista_aves.count) * 100) / 
      (granja.lista_aves.collect { |item| item.peso / item.edad }.max)
    else
      ((granja.lista_aves.collect { |item| item.peso / item.edad }.reduce{ |sum, n| sum + n } / granja.lista_aves.count) * 50) / (granja.lista_aves.collect { |item| item.peso / item.edad }.max)
    end
  end

  # Método beneficio neto: Calcula el beneficio neto dado una granja
  # ((media_peso * precio_venta) / (media_peso * precio_compra)) * 100
  def Funciones.beneficio_neto(granja)
    if granja.destino == :sacrificio
      ((granja.lista_aves.collect { |item| item.peso }.reduce{ |sum, n| sum + n } / granja.lista_aves.count * granja.precio_venta)/(granja.lista_aves.collect { |item| item.peso }.reduce{ |sum, n| sum + n } / granja.lista_aves.count * granja.precio_compra)) * 100
    else
      ((granja.lista_aves.collect { |item| item.edad }.reduce{ |sum, n| sum + n } / granja.lista_aves.count * granja.precio_venta)/(granja.lista_aves.collect { |item| item.edad }.reduce{ |sum, n| sum + n } / granja.lista_aves.count * granja.precio_compra)) * 100
    end
  end
  
  # Método indice de productividad: Calcula el indice de productividad
  # Aceptable 1. Bueno 2. Excelente 3.
  def Funciones.indice_productividad(condiciones, granja)
    if Funciones.bienestar_animal(condiciones, granja) <= 20 && Funciones.beneficio_neto(granja) < 10
      return 1
    end
    if Funciones.bienestar_animal(condiciones, granja) <= 79 && Funciones.beneficio_neto(granja) < 50
      return 2
    end
    if Funciones.bienestar_animal(condiciones, granja) >= 80 && Funciones.beneficio_neto(granja) > 50
      return 3
    end
      return 1
  end
end  