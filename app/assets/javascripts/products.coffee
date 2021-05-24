window.loadListiningProduct = (input) ->
    $('.radio-inline').click ->
        category = $("input[name='filter_category']:checked").val()
        array_numbers = {}

        switch category
            when 'category_low' then array_numbers = { start: 0, end: 50 }
            when 'category_medium' then array_numbers = { start: 51, end: 100 }
            when 'category_high' then array_numbers = { start: 101, end: 200 }

        $.get($('#filters-products').data('url') + '.js', { category: array_numbers }, dataType: 'JS')
