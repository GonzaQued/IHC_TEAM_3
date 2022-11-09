Feature: Selección de solicitud de servicio

    Como paciente quiero realizar la solicitud de un servicio para satisfacer una necesidad

    Scenario: Elige solicitar un de médico específico
    Given el paciente se encuentra en el formulario para agregar una característica 
    When el paciente agregue la característica
    Then el paciente es redirigido al formulario para agregar una nueva característica.

    Scenario: Elige solicitar una consulta médica automática
    Given el paciente se encuentra en el formulario para agregar un síntoma
    When el paciente escoge un síntoma a reportar
    Then el paciente es redirigido al formulario para agregar un síntoma.

    Scenario: No solicita ningúna opción
    Given el paciente se encuentra en el formulario de “Solicitud de servicio”
    When el paciente no solicita algún tipo de servicio
    Then el paciente es alertado con el mensaje “Debe seleccionar un tipo de servicio”.
