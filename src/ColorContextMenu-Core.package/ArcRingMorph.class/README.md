I am a specilization of EllipseMorph that used to draw an arc (ellipse segment) or a ring or a combination of both instead of a full ellipse. So much for my strengths, here are my weaknesses:

I'm image-rendered only at the moment. This makes me inappropriate for fancy 3D-shooter games with high FPS numbers (>= 1 FPS). Apart from this, I lack an appropriate TextOnCurve support as of today. Furthermore, I don't support translucent fillStyles at the moment - my drawing methods should probably only use horizontal or vertical lines to tackle this issue.
Other open points include:
- drop shadows should be circular as well (probably implement this in superclass?)
- #drawKeyboardFocusIndicationOn: should be circular as well (probably implement this in superclass?)