# Making 3D animations for powerpoint

Power has this nice feature where you can add animated 3D models to the presentation

![Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled.png](Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled.png)

![Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled%201.png](Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled%201.png)

Some of this models have multiple "scenes" that show different animations. 

![Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled%202.png](Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled%202.png)

To create your own 3D models with multiple scenes one option is to use Blender and export a GLTF file. 

## Steps in Blender to create a GLTF file with multiple animations compatible with powerpoint

1. Create your 3D model
2. Add armature
3. Select first the object you want to animate then the armature then ctrl+p then add with automatic weights. That makes the armature a parent to the object.
4. Change to **pose mode,** add keyframes for your animation

    Up to here it works with a single animation if you want to have multiple scenes then follow the next steps

5. Change to nonlinear animation
6. Push Down Action to create a new track

    ![Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled%203.png](Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled%203.png)

    ![Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled%204.png](Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled%204.png)

7. Move time cursor to beginning
8. Unclick the track
9. Repeat steps 3-8 for each new action

    ![Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled%205.png](Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled%205.png)

10. Export as GLTF (GLB)

## Files

[SimpleMultiSceneForPowerpoint.blend](Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/SimpleMultiSceneForPowerpoint.blend)

[SimpleMultiSceneForPowerpoint.glb](Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/SimpleMultiSceneForPowerpoint.glb)

[SimpleMultiSceneForPowerpoint.pptx](Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/SimpleMultiSceneForPowerpoint.pptx)

This is what you will see in powerpoint

![Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled%206.png](Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Untitled%206.png)

## Examples with eye movements:

[Eye plane example animations.pptx](Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/Eye_plane_example_animations.pptx)

[SimpleEyeWithPlanes.blend](Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/SimpleEyeWithPlanes.blend)

[test6.glb](Making%203D%20animations%20for%20powerpoint%207369c9cef9e7467ebc027a167ac5c5b1/test6.glb)

## References

[https://docs.blender.org/manual/en/latest/addons/import_export/scene_gltf2.html](https://docs.blender.org/manual/en/latest/addons/import_export/scene_gltf2.html)

[https://www.youtube.com/watch?v=gstgT95I1Ww](https://www.youtube.com/watch?v=gstgT95I1Ww)

[https://www.youtube.com/watch?v=ggWlDs-Pxo0&t=60s](https://www.youtube.com/watch?v=ggWlDs-Pxo0&t=60s)