var tasks = [{
  id: 'Tarea 1',
  name: 'Definición de partes de bicicleta',
  start: '2021-03-01',
  end: '2021-03-08',
},
{
  id: 'Tarea 2',
  name: 'Recopilación de información sobre manufactura de piezas seleccionadas',
  start: '2021-03-08',
  end: '2021-03-15'
},
{
  id: 'Tarea 3',
  name: 'Instalación de programas del curso',
  start: '2021-03-01',
  end: '2021-03-24'
},
{
  id: 'Tarea 4',
  name: 'Generación individual de layouts en Tecnomatix',
  start: '2021-03-16',
  end: '2021-03-23'
},
{
  id: 'Tarea 5',
  name: 'Unificación de linea de producción de bicicletas',
  start: '2021-03-23',
  end: '2021-03-25'
},
{
  id: 'Tarea 6',
  name: 'Evaluación económica de los procesos seleccionados',
  start: '2021-03-17',
  end: '2021-03-31'
},
{
  id: 'Tarea 7',
  name: 'Análisis del celda de manufactura robotizada',
  start: '2021-03-29',
  end: '2021-04-14'
},
{
  id: 'Tarea 8',
  name: 'Condicionamiento del gemelo digital (Digital factory)',
  start: '2021-04-12',
  end: '2021-04-28'
},
{
  id: 'Tarea 9',
  name: 'Preparación avance de proyecto',
  start: '2021-04-12',
  end: '2021-04-26'
},
{
  id: 'Tarea 10',
  name: 'Presentación avance de proyecto',
  start: '2021-04-26',
  end: '2021-04-26'
},
{
  id: 'Tarea 11',
  name: 'Realización de corrección',
  start: '2021-04-26',
  end: '2021-05-10'
},
{
  id: 'Tarea 12',
  name: 'Implementación del control con PLC´s',
  start: '2021-04-28',
  end: '2021-05-17'
},
{
  id: 'Tarea 13',
  name: 'Implementación actuadores neumáticos ',
  start: '2021-05-17',
  end: '2021-05-31'
},
{
  id: 'Tarea 14',
  name: 'Implementación SCADA',
  start: '2021-05-26',
  end: '2021-06-09'
},
{
  id: 'Tarea 15',
  name: 'Socialización con tutores',
  start: '2021-06-09',
  end: '2021-06-09'
}]

var gantt = new Gantt("#gantt", tasks, {
  view_modes: ['Day', 'Week', 'Month'],
  view_mode: 'Day',
  date_format: 'YYYY-MM-DD',
  custom_popup_html: null,
  language: 'es',
  padding: 15
});

$(function () {
  $(".btn-group").on("click", "button", function () {
    $btn = $(this);
    var mode = $btn.prop("id");
    console.log(mode);
    gantt.change_view_mode(mode);
    $btn.parent().find('button').removeClass('active');
    $btn.addClass('active');
  });
});