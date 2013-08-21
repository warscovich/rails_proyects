class CalcularPesoController < ApplicationController
  def index
  end
  
  def libras_a_kilos libras
      kilos = libras * 0,45359237
  end
end
