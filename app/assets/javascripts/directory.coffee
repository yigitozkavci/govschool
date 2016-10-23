$ ->
  $('#user_search').typeahead
    remote: "/directory/autocomplete?query=%QUERY"
