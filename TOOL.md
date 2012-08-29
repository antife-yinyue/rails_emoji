# Open [http://www.emoji-cheat-sheet.com/](http://www.emoji-cheat-sheet.com/) and run in Firebug

```javascript
var s, b
$.each(['people', 'nature', 'objects', 'places', 'symbols'], function(i, id) {
  s = id + ':'
  $('#' + id).find('li').each(function() {
    b = $.trim($(this).text()).replace(/:/g, '')

    if (!/^[\d]+$/.test(b)) {
      s = s + ' ' + b
    }
  })
  console.log(s)
})
```