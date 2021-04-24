var tasks = {
  data: [
    { id: 1, text: "Project #2", start_date: "01-04-2013", duration: 18 },
    {
      id: 2, text: "Task #1", start_date: "02-04-2013", duration: 8,
      progress: 0.6, parent: 1
    },
    {
      id: 3, text: "Task #2", start_date: "11-04-2013", duration: 8,
      progress: 0.6, parent: 1
    }
  ],
  links: [
    { id: 1, source: 1, target: 2, type: 1 },
    { id: 2, source: 2, target: 3, type: 0 }
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