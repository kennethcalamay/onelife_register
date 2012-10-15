showDgroupField = ->
  $('.dgroup-field').show()

hideDgroupField = ->
  $('.dgroup-field').hide()

listenToDGroupFieldChange = ->
  hideDgroupField()
  $('#volunteer_part_of_a_dgroup_true').click ->
    showDgroupField()
  $('#volunteer_part_of_a_dgroup_false').click ->
    hideDgroupField()


supportsDateField = ->
  type = 'date'
  input = document.createElement('input')
  input.setAttribute('type', type)
  return input.type == type

listenToBirthdateChange = ->
  $('#volunteer_birthdate').change ->
    birthdate = new Date( $('#volunteer_birthdate').val() )
    date_now = new Date()
    difference = Math.floor((date_now - birthdate)/1000/60/60/24/365)
    $('#age').val(difference)

addDatePickerIfNecessary = ->
  unless supportsDateField()
    $('.date').datepicker({
      changeMonth: true,
      changeYear: true
    })

$(->
  listenToDGroupFieldChange()
  addDatePickerIfNecessary()
  listenToBirthdateChange()
  $('form').nestedFields()
)
