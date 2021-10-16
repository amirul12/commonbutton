A Flutter custom common button that frequently use in flutter project.  

## Features

TODO: List what your package can do. Maybe include images, gifs, or videos.


- [common_button](#common_button)
    - [How to use it.](#how-to-use-it)
    - [parameters](#parameters)

##  How to use it.



### common_button
the default effects is Icons.favorite
```dart
  CommonButton(), 
  // give some parameter 
```

### how-to-use-it
and you can also define custom use.

```dart
    CommonButton(
        onPress: _incrementCounter,
        text: "Counter",
        textAlign: Alignment.center,
        tColor: Colors.white,
        bgColor: Colors.orange,
        isIcon: false,
        customShape: 1,
    ),
```
 
 

## parameters
| parameter                  | description                                                                           | default                                                                                                                                                                               |
| -------------------------- | ------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| customShape                | 1 StadiumBorder,2 RoundedRectangleBorder, 3 CircleBorder                              | StadiumBorder                                                                                                                                                                                |
| bgColor                    | animation duration to change isLiked state                                            |                                                                                                                                                  |
| tColor                     | text color                                                                            |                                                                                                                                                                             |
| isIcon                     | icon enable for true                                                                  |  
 