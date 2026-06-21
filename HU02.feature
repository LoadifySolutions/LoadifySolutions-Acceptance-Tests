Feature: HU-02 Visualizacion de detalle de una orden
    Como Operario de Armado y Despacho en CD, quiero ver el detalle de productos
    de una orden seleccionada, para conocer que items debo preparar antes de iniciar el armado

Scenario: Operario consulta el detalle de una orden
    Given que el operario esta en la lista de ordenes pendientes
    When selecciona una orden especifica
    Then el sistema muestra el detalle completo con la lista de productos, cantidades y caracteristicas

Scenario: Orden con multiples tipos de productos
    Given que el operario ha seleccionado una orden
    When visualiza el detalle
    Then el sistema muestra cada producto diferenciado con su nombre, cantidad, peso y nivel de fragilidad
