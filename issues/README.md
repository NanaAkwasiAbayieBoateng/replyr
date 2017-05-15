<!-- Generated from .Rmd. Please edit that file -->
A good part of practical or production packages is "shimming" or working around rough edges of supplied services and data. For `replyr` this means trying to make the semantics of multiple `dplyr` data services look similar (including working across different versions of `dplyr`, `Spark`, and `sparklyr`).

These shimming actions are ugly little work-arounds in code (something the package user gets to then avoid). However, unless you run down the bad effects you think you are preventing you can end up fighting phantoms or paying very much for needless precautions.

This directory lists the current "wish this wasn't that way" behaviors from other packages that `replyr` attemptings to supply work-arounds for.
