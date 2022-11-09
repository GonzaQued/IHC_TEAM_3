Feature: Configuración de servicio para notificaciones

    Como paciente deseo configurar el método de recordatorio para recordar mi tratamiento correctamente.

    Scenario: Recordatorio por notificaciones de aplicación
    Given el paciente se encuentre en el formulario para añadir métodos de recordatorio
    When escoge recordatorio por notificaciones de la aplicación
    And escoja la hora y ritmo del recordatorio 
    Then el recordatorio con notificación de tipo recordatorio por aplicación se registra en la cuenta del paciente
    And se muestra el mensaje “Recordatorio agregado”.

    Scenario: Recordatorio por mensaje de WhatsApp
    Given el paciente se encuentre en el formulario para agregar métodos de recordatorio
    And esté registrado con cuenta Premium
    When escoge recordatorio por mensajes de WhatsApp
    And ingrese su número de móvil de WhatsApp
    And reciba un código de autenticación al número de WhatsApp ingresado
    And ingrese el código de autenticación recibido
    And escoja la hora y ritmo del recordatorio
    Then el recordatorio con notificación de tipo recordatorio por WhatsApp se registra en la cuenta del paciente
    And se muestra el mensaje “Recordatorio agregado”.

    Scenario: Recordatorio por mensaje de Messenger
    Given el paciente se encuentre en el formulario para agregar métodos de recordatorio
    And esté registrado con cuenta Premium
    When escoge recordatorio por mensajes por Messenger
    And ingrese su número de Messenger a la aplicación
    And reciba un código de autenticación al número de Messenger ingresado
    And ingrese el código de confirmación recibido
    And escoja la hora y ritmo del recordatorio
    Then el recordatorio con notificación de tipo recordatorio por Messenger se registra en la cuenta del paciente
    And se muestra el mensaje “Recordatorio agregado”.

    Scenario: Recordatorio por mensajería de operador
    Given el paciente se encuentre en el formulario para agregar métodos de recordatorio
    And esté registrado con cuenta Premium
    When escoge recordatorio por mensajería al número de móvil por operador
    And ingrese su número de móvil a la aplicación
    And ingrese el operador de uso
    And reciba un código de autenticación al número de móvil ingresado
    And ingrese el código de confirmación recibido
    And escoja la hora y ritmo del recordatorio
    Then el recordatorio con notificación de tipo recordatorio por operador se registra en la cuenta del paciente
    And se muestra el mensaje “Recordatorio registrado”.

    Scenario: Recordatorio por métodos Premium
    Given el paciente se encuentre en el formulario para agregar métodos de recordatorio
    And no esté registrado con cuenta Premium
    When escoge recordatorio por WhatsApp, Messenger u operador
    Then aparece un mensaje “¡Esta es una función Premium!”
    And el recordatorio no se registra en la cuenta del paciente.

    Scenario: El paciente no desea notificaciones de recordatorio
    Given el paciente se encuentre en el formulario para agregar métodos de recordatorio
    When no escoge notificaciones por ningún medio
    And escoja la hora y frecuencia del recordatorio
    Then el recordatorio es registrado en la cuenta del paciente con configuración de notificaciones deshabilitada
    And se muestra el mensaje “Recordatorio registrado sin notificaciones”.