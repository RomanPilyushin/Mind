
```dataview
table dateformat(file.ctime, "MM-DD") as "Date", file.tags as "Tags"
from #german and #grammar        
sort file.ctime desc
```

