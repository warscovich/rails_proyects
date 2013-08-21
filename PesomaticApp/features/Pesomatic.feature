Feature: Las personas(Hombres y Mujeres) pueden calcular su pesos ideal por los metodos de BMI, Devine, Robinson, Miller 

Scenario: Calcular su peso BMI para una persona de 72 pulgadas

  Given I am in the Pesomatic weight calculator page
  When I fill in "height" with my height which is 72 inches
  And  I press "Get my Weight" button
  Then I should see my ideal weight (BMI) in pounds or kilograms