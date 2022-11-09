Feature: Registro y ventajas de compras realizadas

    Como paciente quiero registrar las compras realizadas en mi cuenta para controlar mis pedidos y acumular ventajas para compras futuras.

    Scenario: Historial de compras
    Given el paciente se encuentre en la sección de información de su cuenta
    When el usuario escoja “Historial de compras”
    Then se mostrará el historial de compras del usuario.

    Scenario: Puntos de descuento
    Given el paciente se en encuentre en la sección de información de su cuenta
    When el usuario escoja “Puntos acumulados”
    Then se mostrará la cantidad de puntos acumulados por compras.

    Scenario: Control de pedidos
    Given el paciente se en encuentre en su cuenta
    When seleccione la opción “Seguir pedidos”
    And elija un producto en proceso de entrega
    Then podrá visualizar si el tiempo en el que estará listo su pedido.