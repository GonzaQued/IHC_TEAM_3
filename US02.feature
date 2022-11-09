Feature: Registro de actividades a realizar para tratamientos

    Como paciente quiero ingresar los detalles de las actividades que necesito realizar para cumplir mi tratamiento satisfactoriamente.

    Scenario: La solicitud es para médicos
    Given el paciente se encuentre en el formulario para agregar característica del médico 
    When agregue el nombre de la característica
    And agregue la especialidad
    And agregue detalles adicionales
    And seleccione el botón continuar
    Then el paciente es redirigido al formulario para solicitar un servicio.

    Scenario: La solicitud es para una consulta médica automática
    Given el paciente se encuentre en el formulario para agregar un síntoma
    When agregue la solicitud
    And agregue el síntoma a tratar
    And agregue la especialidad
    And agregue detalles adicionales
    And seleccione el botón continuar
    Then el paciente es redirigido al formulario para solicitar un servicio.

    Scenario: Falta completar al menos un detalle de las solicitudes
    Given el paciente se encuentre en el formulario para agregar una solicitud de servicio
    When seleccione continuar sin algún campo rellenado en el formulario
    Then el paciente es alertado con el mensaje “Debe llenar al menos un campo”.
