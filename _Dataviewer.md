
```dataview
table dateformat(file.ctime, "MM-DD") as "Date", file.tags as "Tags"
from #uncompleted       
sort file.ctime desc
```


```contributionGraph
title: Created Notes
graphType: default
dateRangeValue: 180
dateRangeType: LATEST_DAYS
startOfWeek: "1"
showCellRuleIndicators: true
titleStyle:
  textAlign: left
  fontSize: 15px
  fontWeight: normal
dataSource:
  type: PAGE
  value: ""
  dateField:
    type: FILE_CTIME
  filters: []
fillTheScreen: false
enableMainContainerShadow: false
cellStyleRules: []

```
```contributionGraph
title: Edited Notes
graphType: default
dateRangeValue: 180
dateRangeType: LATEST_DAYS
startOfWeek: "1"
showCellRuleIndicators: true
titleStyle:
  textAlign: left
  fontSize: 15px
  fontWeight: normal
dataSource:
  type: PAGE
  value: ""
  dateField:
    type: FILE_MTIME
  filters: []
fillTheScreen: false
enableMainContainerShadow: false
cellStyleRules: []

```

