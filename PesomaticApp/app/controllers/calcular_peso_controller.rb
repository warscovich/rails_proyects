class CalcularPesoController < ApplicationController
  def index
    #@altura = 0
    @formulas = Hash.new
  end
  
  def calcular_peso_bmi
    @formulas["bmi"] = ((10)*(@height * @height))/703
    #@system
  end
  
  def libras_a_kilos libras
      @kilos = libras * 0,45359237
  end
end
