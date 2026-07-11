Feature: Visualización de dashboard de despacho en tiempo real
  Como Gerente de Operaciones Logísticas
  Quiero visualizar el estado actual de los pedidos en proceso desde un dashboard
  Para monitorear la operación sin necesidad de consultar directamente a los operarios

  Scenario: Gerente accede al dashboard
    Given que el gerente ha iniciado sesión en su dispositivo
    When accede a la sección de dashboard
    Then el sistema muestra el estado actual de todos los pedidos en proceso con su avance en tiempo real

  Scenario: Actualización automática del dashboard
    Given que el gerente está visualizando el dashboard
    When un operario actualiza el estado de su pedido
    Then el dashboard refleja el cambio automáticamente sin necesidad de recargar la página
