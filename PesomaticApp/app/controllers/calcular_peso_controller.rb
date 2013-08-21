class CalcularPesoController < ApplicationController
  def index
    #@altura = 0
    @formulas = Hash.new
  end
  
  def calcular_peso
    @formulas = Hash.new
    @height=params[:height].to_i
    system = params[:system]
	genre = params[:genre]
    
    #Conversion centimetros a pulgadas
    if system == "Centimetros" then
     @height = @height * 0.39 
    end
    
    #Calculo de pesos
	if genre == "Masculino" then
		calcular_peso_bmi
		calcular_peso_devine_men
		calcular_peso_miller_men
		calcular_peso_robinson_men
	else
		calcular_peso_bmi
		calcular_peso_devine_women
		calcular_peso_miller_women
		calcular_peso_robinson_women
    end

    
    #Conversion a kilogramos
    
    render :template => 'calcular_peso/index'
  end
  
  def calcular_peso_bmi
    @formulas['BMI'] = ((10)*(@height * @height))/703
  end
  
  def calcular_peso_devine_men
    @formulas['DEVINE'] = (110 + (5.06*(@height-60)))
  end
  
  def calcular_peso_robinson_men
    @formulas['ROBINSON'] = (114.4 +(4.18*(@height-60)))
  end
  
  def calcular_peso_miller_men
    @formulas['MILLER'] = (123.64 +(3.10*(@height-60)))
  end
 
  def calcular_peso_devine_women
    @formulas['DEVINE'] = (100.1 +(5.06*(@height-60)))
  end
  
  def calcular_peso_robinson_women
    @formulas['ROBINSON'] = (107.8 +(3.74*(@height-60)))
  end
  
  def calcular_peso_miller_women
    @formulas['MILLER'] = (116.82 +(2.99*(@height-60)))
  end
  
  #def libras_a_kilos libras
  #    @kilos = libras * 0.45359237
  #end
end
