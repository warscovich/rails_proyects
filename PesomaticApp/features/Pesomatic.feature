Feature: Las personas(Hombres y Mujeres) pueden calcular su pesos ideal por los metodos de BMI, Devine, Robinson, Miller 

Scenario: Calcular su peso BMI para una persona de 72 pulgadas

  Given I am in the Pesomatic weight calculator page
  When I fill in "height" with my height which is 72 inches
  And  I press "GetWeight" button
  Then I should see my ideal weight (BMI) in pounds or kilograms
  
Scenario: Calcular su peso devine para una persona de 72 pulgadas

  Given I am in the Pesomatic weight calculator page
  When I fill in "height" with my height which is 72 inches
  And  I press "GetWeight" button
  Then I should see "170.72" men, "160.84" women 