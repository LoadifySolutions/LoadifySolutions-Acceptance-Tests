Feature: HU-13 Registro de parametros de peso y fragilidad
    Como Gerente de Operaciones Logisticas, quiero registrar los parametros de peso y
    fragilidad de los productos, para que la IA los tome en cuenta al definir el orden de apilamiento

Scenario: Gerente registra parametros de un producto
    Given que el gerente esta en la seccion de parametros de productos
    And completa el formulario con el nombre del producto, peso y nivel de fragilidad
    When guarda los parametros
    Then el sistema registra los parametros y la IA los considera al generar instrucciones de apilamiento

Scenario: Intento de registrar un producto ya existente
    Given que el gerente intenta registrar parametros de un producto que ya esta en el sistema
    When presiona guardar
    Then el sistema muestra un aviso indicando que el producto ya existe y sugiere modificarlo
