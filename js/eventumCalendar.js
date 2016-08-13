$(document).ready(function() {

    /**
     * http://www.sitepoint.com/javascript-generate-lighter-darker-color/
     */
    function ColorLuminance(hex, lum) {

        // validate hex string
        hex = String(hex).replace(/[^0-9a-f]/gi, '');
        if (hex.length < 6) {
            hex = hex[0]+hex[0]+hex[1]+hex[1]+hex[2]+hex[2];
        }
        lum = lum || 0;

        // convert to decimal and change luminosity
        var rgb = "#", c, i;
        for (i = 0; i < 3; i++) {
            c = parseInt(hex.substr(i*2,2), 16);
            c = Math.round(Math.min(Math.max(0, c + (c * lum)), 255)).toString(16);
            rgb += ("00"+c).substr(c.length);
        }

        return rgb;
    }
    var terms = {};      
    $('#calendar').fullCalendar({

        eventSources: [{
            url:'/api/public/v1/course',
            data: function() {
                return {
                    category: $("#calendar-category-input option:selected").val()
                };
            }},
            {
                url:'/api/public/v1/exams'
            }
        ],
        fixedWeekCount: false,
        eventBorderColor: 'transparent',
        firstDay: 1,
        aspectRatio: 2,
        eventRender: function(event, element) {  
            if (event.type == 'course') {

                var html = ' <span class="fc-language-block"><small>('+event.language+')</small></span>';
                html += '<span class="fc-time-block"><span class="fc-time-start">';
                html += event.start.format('h:mm a');
                html += '</span> - <span class="fc-time-end">';
                html += event.end.format('h:mm a');
                html += '</span></span>';
                // replace the event title
                element.find('.fc-title').parent().append(html);
                element.find('.fc-time').text('');

                if (!(event.term_id in terms)) {
                    terms[event.term_id] = ColorLuminance(event.backgroundColor, .2);
                };
                if (event.multipleSeparateDays) {
                    element.find('.fc-title').parent().parent().append('<div style="min-height:5px;background-color:'+terms[event.term_id]+'"></div>');
                };
            }else if(event.type == 'exam'){
                element.find('.fc-title').parent().prepend('<div><strong>Exam Session:</strong></div>');
                element.find('.fc-time').text('');
            }
        }
    });

    $('#calendar-category-input').on('change', function (e) {
        $('#calendar').fullCalendar('refetchEvents');
    });
});