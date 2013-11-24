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
- Alot of work is needed to animate, especially if your animation would be a complex one.

### Video - MPMoviePlayerController

This process uses a video file to present the handwritting animation, I use Adobe Flash to make the animation
then export it to a .mov or .mp4 video with a codec of H.264.

Pros: 
- Easy to implement.
- Easy to make a animation (depending on what you use.)
- Stroke style can be changed.

Cons:
- Every time you need to make a change you need to rerender a video file.
- Large file size, not necessarily a big issue if its only a drawing "type" of animation my video file only reach about  50-180kb, but It's alot larger compare to the HTML5 way.

Then using MediaPlayer.framework to present the video in full screen without any playback controls.

### HTML5/JQuery animation - UIWebView

Using UIWebView to present a local/web HTML5 animation. The HTML5 animation are made of javascript codes. Its like the core animation way, but just using a different language. I prefer this one because I am used to animating using javascript.

Pros:
- Lightweight/Faster
- Easy to make a animation, especially now that there are alot of javascript animation plugins or framework that are easy to use.
- You can also call native methods/function of iOS like a callback function after animation.
- You could change stroke style using masking.

Cons:
- I had problem in presenting it to the UIWebView, especially in trying to figure out how to fit it in.
- Alot of coding.

I easily manage to create a HTML5 animation by using Adobe Flash and a plugin for flash called "CreateJS Toolkit". Which makes your flash animation to HTML5.


Yes, I am a fan of Adobe Flash, but you could use any software or code your animation by yourself. And because of the new iphone5 which got a different dimension compare to the older one. You may have a hard time making a animation that would work on both because you have to base your Coordinates/CGPoint positions base on how large the screen/container.
