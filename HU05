Feature: Generación de plan de armado por IA
  Como Operario de Armado y Despacho en CD
  Quiero que al presionar un botón el sistema genere automáticamente el plan de armado considerando las reglas del gerente
  Para recibir una distribución óptima sin tener que calcularla manualmente

  Scenario: Generación exitosa del plan de armado
    Given que el operario ha seleccionado una orden con los rollys necesarios definidos
    When presiona el botón "Generar plan de armado"
    Then el sistema envía los datos del pedido a la IA
    And muestra el plan de armado generado considerando las reglas de compatibilidad y los parámetros de peso y fragilidad

  Scenario: Error al generar el plan de armado
    Given que el operario presiona el botón "Generar plan de armado"
    When el servicio de IA no responde o falla la conexión
    Then el sistema muestra un mensaje de error indicando que no se pudo generar el plan
    And permite al operario reintentar la generación
