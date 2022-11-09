Feature: Modalidad de pago y confirmación del pedido

    Como paciente quiero confirmar mi compra y el método de pago para poder registrar mi pedido.

    Scenario: Confirmación de datos de pedido
    Given el paciente se encuentre en el panel de confirmación de compras
    When ingrese sus datos
    And seleccione “Confirmar datos”
    Then los datos se guardarán en el pedido.

    Scenario: Selección del método de pago
    Given el paciente se encuentre en el panel de confirmación de compras
    And haya confirmado sus datos del pedido
    When selecciona un método de pago para el pedido
    And digita los datos de la tarjeta
    Then se registrará el pedido satisfactoriamente.

    Scenario: El paciente desea cancelar el pedido
    Given el paciente no se encuentra conforme con lo adquirido.
    When seleccione “Cancelar pedido”
    Then el pedido previamente adquirido y pagado pasará a evaluación para su posterior cancelación.