
```dataview
table dateformat(file.ctime, "MM-DD") as "Date", file.tags as "Tags"
from #uncompleted         
sort file.ctime desc
```

