# markdown-letter
german letter markdown template


## Makefile

``` shell
# compile letter
make MD=source/adac-reiseruecktritt.md
make install
```

## pandoc command
```
pandoc --pdf-engine=pdflatex --template=letter.tex -s ./letter.md -f markdown+escaped_line_breaks -t latex -o letter.pdf
```

## sample letter

```
---
size: 12pt

sender:
  name: 'John Doe'
  street: 'Lovejoy Street 4'
  zip: '12345'
  city: 'Springfield'
  phone: '1122390'
  email: 'mail@me.com'

recipient:
  name: 'Jane Doe'
  street: 'Van Houten Avenue 123'
  zip: '12122'
  city: 'Shelbyville'
  contact: ''

date: '\today'
subject: 'interesting subject'
salutation: 'Dear Sir or Madam'
regards: 'Kind regards'
---

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed congue ullamcorper 
efficitur. Suspendisse nec nulla neque. Mauris malesuada, leo tempor tempor 
pretium, quam lacus feugiat sapien, at sodales nisi lectus ac mi. Ut iaculis a 
neque vel accumsan. Duis feugiat risus in sem imperdiet, nec vulputate ex 
mollis. Integer vestibulum ex tristique, porta erat vel, elementum odio. 
Phasellus purus odio, dapibus nec tristique mollis, sodales vitae quam. 
Curabitur in diam urna. Ut vel sapien accumsan, imperdiet est vitae, finibus 
enim. Mauris feugiat quis massa ac laoreet. Donec egestas, ipsum a bibendum 
porttitor, mauris eros imperdiet lorem, vitae lacinia ex ante eget sem. Morbi 
pretium aliquam dolor vitae ornare. Duis ut tincidunt orci, at placerat nisi. 
Fusce felis odio, finibus cursus imperdiet vitae, mollis posuere elit.
```

## Links
https://pandoc.org/MANUAL.html#pandocs-markdown
