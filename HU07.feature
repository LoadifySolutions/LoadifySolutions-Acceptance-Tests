Feature: Finalización y registro de pedido armado
  Como Operario de Armado y Despacho en CD
  Quiero registrar el pedido como completado desde mi dispositivo
  Para que el gerente quede notificado y el pedido pase a la etapa de despacho

  Scenario: Operario finaliza el pedido correctamente
    Given que el operario ha completado todos los pasos de apilamiento
    When presiona el botón de finalizar pedido
    Then el sistema registra el pedido como completado
    And notifica al gerente que está listo para despacho

  Scenario: Intento de finalizar pedido con pasos incompletos
    Given que el operario no ha completado todos los pasos de apilamiento
    When intenta presionar el botón de finalizar pedido
    Then el sistema muestra un aviso indicando que aún quedan pasos pendientes por completar
