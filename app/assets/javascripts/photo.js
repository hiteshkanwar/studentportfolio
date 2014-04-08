 $(window).scroll(function() {
      var url;
      url = $('.pagination .next_page').attr('href');
      if (url && $(window).scrollTop() > $(document).height() - $(window).height() - 60) {
        $('.pagination').text('Fetching more photos+...');
        return $.getScript(url);
      }
    });
