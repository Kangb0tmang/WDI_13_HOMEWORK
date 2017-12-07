# in groups of

create an application that randomly organize a list of things into groups

1. allow user to enter a list of things
2. allow user to enter a group size
3. randomly assign things into groups with size given
4. if there are remainders here is how it's going to be distributed
    - if the remainder is one randomly assign it to a group
    - if the remainders are one less than the group size. they stay as their own group
    - else distribute them evenly into each group.

## eg 1
```
list: bart, lisa, maggie, homer  
group size: 2

group 1:
homer, lisa

group 2:
bart, maggie

```
## eg 2

```
list: bart, lisa, maggie, homer, marge  
group size: 2

group 1:
homer, lisa, marge

group 2:
bart, maggie

```
## eg 3

```
list: a, b, c, d, e, f, g, h  
group size: 3

group 1:
a, c, e 

group 2:
b, d, f

group 3:
g, h

```

