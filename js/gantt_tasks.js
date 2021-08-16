var tasks = {
  data: [
    { id: 1, text: "Documentación y planteamiento", start_date: "01-03-2021", duration: 32 },
    {
      id: 2, 
      text: "Recopilación de información de partes de bicicleta", 
      start_date: "01-03-2021", 
      duration: 5,
      progress: 1, 
      parent: 1
    },
    {
      id: 3, 
      text: "Comparación de características y selección de partes a trabajar", 
      start_date: "05-03-2021", 
      duration: 3,
      progress: 1, 
      parent: 1
    },
    {
      id: 4, 
      text: "Desarrollo de propuesta individual de referencias de bicicletas", 
      start_date: "05-03-2021", 
      duration: 4,
      progress: 1, 
      parent: 1
    },
    {
      id: 5, 
      text: "Documentación de los procesos de manufactura de las piezas seleccionadas", 
      start_date: "08-03-2021", 
      duration: 7,
      progress: 1, 
      parent: 1
    },
    {
      id: 6, 
      text: "Selección de referencias de bicicletas (2) a desarrollar en la línea de producción", 
      start_date: "09-03-2021", 
      duration: 1,
      progress: 1, 
      parent: 1
    },
    {
      id: 7, 
      text: "Instalación de programas de simulación", 
      start_date: "01-03-2021", 
      duration: 20,
      progress: 1, 
      parent: 1
    },
    {
      id: 8, 
      text: "Generación Individual de Layouts en Tecnomatix Plant Simulation", 
      start_date: "16-03-2021", 
      duration: 7,
      progress: 1, 
      parent: 1
    },
    {
      id: 9, 
      text: "Unificación de procesos en línea de producción", 
      start_date: "23-03-2021", 
      duration: 3,
      progress: 1, 
      parent: 1
    },
    {
      id: 10, 
      text: "Generación de la propuesta", 
      start_date: "25-03-2021", 
      duration: 3,
      progress: 1, 
      parent: 1
    },
    {
      id: 11, 
      text: "Aprendizaje de uso de Github", 
      start_date: "28-03-2021", 
      duration: 5,
      progress: 1, 
      parent: 1
    },
    { id: 12, text: "Diseño y desarrollo", start_date: "27-03-2021", duration:131 },
    {
      id: 13, 
      text: "Evaluación económica de los procesos seleccionados", 
      start_date: "27-03-2021", 
      duration: 22,
      progress: 1, 
      parent: 12
    },
    {
      id: 14, 
      text: "Análisis de Celda de Manufactura Robotizada", 
      start_date: "14-04-2021", 
      duration: 25,
      progress: 1, 
      parent: 12
    },
    {
      id: 15, 
      text: "Generación de ruta de diseño", 
      start_date: "14-04-2021", 
      duration: 10,
      progress: 1, 
      parent: 14
    },
    {
      id: 16, 
      text: "Implementación de ruta de diseño", 
      start_date: "22-04-2021", 
      duration: 17,
      progress: 1, 
      parent: 14
    },
    {
      id: 17, 
      text: "Condicionamiento del gemelo digital", 
      start_date: "30-04-2021", 
      duration: 25,
      progress: 1, 
      parent: 12
    },
    {
      id: 18, 
      text: "Implementación de Controladores Industriales (PLC)", 
      start_date: "25-05-2021", 
      duration: 25,
      progress: 1, 
      parent: 12
    },
    {
      id: 19, 
      text: "Selección e implementación de actuadores ", 
      start_date: "10-06-2021", 
      duration: 20,
      progress: 1, 
      parent: 12
    },
    {
      id: 20, 
      text: "Selección de máquinas y procesos que implementen actuadores", 
      start_date: "10-06-2021", 
      duration: 7,
      progress: 1, 
      parent: 19
    },
    {
      id: 21, 
      text: "Planteamiento de secuencias y parámetros para la selección los actuadores y sensores.", 
      start_date: "15-06-2021", 
      duration: 16,
      progress: 1, 
      parent: 19
    },
    {
      id: 22, 
      text: "Implementación SCADA", 
      start_date: "01-07-2021", 
      duration: 35,
      progress: 1, 
      parent: 12
    },
    {
      id: 23, 
      text: "Establecimiento de comunicación entre plataformas (Ignition-NX-RobotStudio) ", 
      start_date: "01-07-2021", 
      duration: 15,
      progress: 1, 
      parent: 22
    },
    {
      id: 24, 
      text: "Desarrollo de las GUI para el desarrollo de las imterfaces HMI", 
      start_date: "14-07-2021", 
      duration: 22,
      progress: 1, 
      parent: 22
    },
    
    { id: 25, text: "Validación y verificación ", start_date: "05-08-2021", duration:41 },
    {
      id: 26, 
      text: "Verificación de sistemas por simulación", 
      start_date: "05-08-2021", 
      duration: 11,
      progress: 1, 
      parent: 25
    },
    {
      id: 27, 
      text: "Cotización de equipos", 
      start_date: "17-08-2021", 
      duration: 14,
      progress: 0.1, 
      parent: 25
    },
    {
      id: 28, 
      text: "Compras e Insumos", 
      start_date: "27-08-2021", 
      duration: 17,
      progress: 0.1, 
      parent: 25
    },
    {
      id: 29, 
      text: "Adquisición de equipos  y licencias", 
      start_date: "27-08-2021", 
      duration: 19,
      progress: 0.1, 
      parent: 25
    },
    { id: 30, text: "Avances y entregas", start_date: "01-04-2021", duration:137 },
    {
      id: 31, 
      text: "Entrega Intermedia", 
      start_date: "01-04-2021", 
      duration: 33,
      progress: 1, 
      parent: 30
    },
    {
      id: 32, 
      text: "Preparación de Entregables", 
      start_date: "12-04-2021", 
      duration: 19,
      progress: 1, 
      parent: 31
    },
    {
      id: 33, 
      text: "Publicación en Github", 
      start_date: "01-04-2021", 
      duration: 27,
      progress: 1, 
      parent: 31
    },
    {
      id: 34, 
      text: "Entrega Final", 
      start_date: "03-06-2021", 
      duration: 74,
      progress: 0.95, 
      parent: 30
    },
    {
      id: 35, 
      text: "Desarrollo de Informe Ejecutivo", 
      start_date: "03-06-2021", 
      duration: 47,
      progress: 1, 
      parent: 34
    },
    {
      id: 36, 
      text: "Publicación de documentación", 
      start_date: "01-08-2021", 
      duration: 15,
      progress: 1, 
      parent: 34
    },
    {
      id: 37, 
      text: "Organización de entregables", 
      start_date: "18-07-2021", 
      duration: 27,
      progress: 1, 
      parent: 34
    }

  ]
}

function setScaleConfig(value) {
  switch (value) {
    case "day":
      gantt.config.scale_unit = "day";
      gantt.config.step = 1;
      gantt.config.date_scale = "%d %M";
      gantt.config.subscales = [];
      gantt.config.scale_height = 27;
      gantt.templates.date_scale = null;
      break;
    // case "week":
    //   var weekScaleTemplate = function (date) {
    //     var dateToStr = gantt.date.date_to_str("%d %M");
    //     var startDate = gantt.date.week_start(new Date(date));
    //     var endDate = gantt.date.add(gantt.date.add(startDate, 1, "week"), -1, "day");
    //     return dateToStr(startDate) + " - " + dateToStr(endDate);
    //   };
    //   gantt.config.scale_unit = "week";
    //   gantt.config.step = 1;
    //   gantt.templates.date_scale = weekScaleTemplate;
    //   gantt.config.subscales = [
    //     { unit: "day", step: 1, date: "%D" }
    //   ];
    //   gantt.config.scale_height = 50;
    //   break;
    case "month":
      gantt.config.scale_unit = "month";
      gantt.config.step = 1;
      //gantt.templates.date_scale = null;
      gantt.config.date_scale = "%F";
      gantt.config.subscales = [
        { unit: "week", step: 1, date: "%d %M" }
      ];
      gantt.config.scale_height = 50;
      break;
  }
}

setScaleConfig('day');

$(function () {
  $(".btn-group").on("click", "button", function () {
    $btn = $(this);
    var mode = $btn.prop("id");
    setScaleConfig(mode);
    gantt.render();
    $btn.parent().find('button').removeClass('active');
    $btn.addClass('active');
  });
});
