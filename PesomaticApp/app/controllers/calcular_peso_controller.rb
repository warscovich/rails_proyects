class CalcularPesoController < ApplicationController
  def index
    #@altura = 0
  end
  
  def libras_a_kilos libras
      @kilos = libras * 0,45359237
  end
end
