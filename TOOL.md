# Open [http://www.emoji-cheat-sheet.com/](http://www.emoji-cheat-sheet.com/) and run in Firebug

```javascript
var ids = ['people', 'nature', 'objects', 'places', 'symbols']
var r = []
var s, b
ids.forEach(function(id) {
  s = '[' + id + ']:'
  $('#emoji-' + id).find('li > div').each(function() {
    b = $.trim($(this).text()).replace(/:/g, '')

    if (!/^[\d]+$/.test(b)) {
      s += ' ' + b
    }
    else {
      r.push(b)
    }
  })
  console.log(s)
})
console.log(r)
```
