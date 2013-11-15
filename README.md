iOS-drawing-animation
=====================

Different ways to have a drawing animation effect in iOS.


- iOS CAShapeLayer and CAAnimation
- Video - MediaPlayer.framework
- HTML5/JQuery animation - UIWebView


### iOS CAShapeLayer and CAAnimation

Animating the property of CAShapeLayer strokeEnd 

Pros:
- Lightweight/Faster. 
In theory it should be faster and lightweight because the animation and objects are programatically created.

Cons:
- Stroke style cannot be change.
- Alot of work is needed to animate, especially if your animation would be too complex.

### Video - MPMoviePlayerController

This process uses a video file to render the handwritting animation, I used flash to make the animation
then export it to a .mov video.

Pros:

Cons:

Then using MediaPlayer.framework to present the video in full screen without any playback controls.
