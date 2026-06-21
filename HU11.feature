Feature: HU-11 Registro de regla de compatibilidad entre productos
    Como Gerente de Operaciones Logisticas, quiero registrar reglas que definan que
    productos pueden o no ir juntos en un mismo rolly contenedor, para que la IA las
    considere al generar el plan de armado

Scenario: Gerente registra una nueva regla de compatibilidad
    Given que el gerente esta en la seccion de configuracion de reglas
    And completa el formulario con los productos involucrados y el tipo de restriccion
    When presiona guardar
    Then el sistema registra la regla y la IA la considerara en los proximos planes de armado

Scenario: Intento de registrar una regla duplicada
    Given que el gerente intenta registrar una regla de compatibilidad que ya existe
    When presiona guardar
    Then el sistema muestra un aviso indicando que esa regla ya esta registrada
