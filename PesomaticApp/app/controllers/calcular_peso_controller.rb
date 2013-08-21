class CalcularPesoController < ApplicationController
  def index
    #@altura = 0
    @formulas = Hash.new
  end
  
  def calcular_peso
    @formulas = Hash.new
    @height=params[:height].to_i
    system = params[:system]
    
    #Conversion centimetros a pulgadas
    if system == "Centimetros" then
     @height = @height * 0.39 
    end
    
    #Calculo de pesos
    calcular_peso_bmi
    calcular_peso_devine
    calcular_peso_miller
    calcular_peso_robinson
    
    #Conversion a kilogramos
    
    render :template => 'calcular_peso/index'
  end
  
  def calcular_peso_bmi
    @formulas['bmi'] = ((10)*(@height * @height))/703
  end
  
  def calcular_peso_devine
    @formulas['devine_men'] = (110 + (5.06*(@height-60)))
    @formulas['devine_women'] = (100.1 +(5.06*(@height-60)))
  end
  
  def calcular_peso_robinson
    @formulas['robinson_men'] = (114.4 +(4.18*(@height-60)))
    @formulas['robinson_women'] = (107.8 +(3.74*(@height-60)))
  end
  
  def calcular_peso_miller
    @formulas['miller_men'] = (123.64 +(3.10*(@height-60)))
    @formulas['miller_women'] = (116.82 +(2.99*(@height-60)))
  end
  
  #def libras_a_kilos libras
  #    @kilos = libras * 0.45359237
  #end
end
