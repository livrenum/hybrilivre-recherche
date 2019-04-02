---
title: {{ .Name | replaceRE "^([0-9]{2,4}-)+" "" | replaceRE "-" " " | title }}
date: {{ .Date | dateFormat "2006-01-02" }} 
---
