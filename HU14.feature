Feature: HU-14 Modificacion de parametros de peso y fragilidad
    Como Gerente de Operaciones Logisticas, quiero modificar los parametros de peso y
    fragilidad registrados, para mantenerlos actualizados segun los cambios en el inventario

Scenario: Gerente actualiza los parametros de un producto
    Given que el gerente esta en la seccion de parametros de productos
    And selecciona un producto existente y actualiza su peso o nivel de fragilidad
    When guarda los cambios
    Then el sistema actualiza los parametros y la IA los aplica en los siguientes planes de armado

Scenario: Gerente cancela la modificacion
    Given que el gerente esta editando los parametros de un producto
    When decide cancelar sin guardar
    Then el sistema descarta los cambios y mantiene los parametros originales del producto
