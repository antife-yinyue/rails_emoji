# Open [http://www.emoji-cheat-sheet.com/](http://www.emoji-cheat-sheet.com/) and run in Firebug

```javascript
var s
$.each(['people', 'nature', 'objects', 'places', 'symbols'], function(i, id) {
  s = id + ':'
  $('#' + id).find('li').each(function() {
    s = s + ' ' + $.trim($(this).text()).replace(/:/g, '')
  })
  console.log(s)
})
```