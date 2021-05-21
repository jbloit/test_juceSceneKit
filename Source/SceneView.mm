/*
  ==============================================================================

    SceneView.cpp
    Created: 21 May 2021 11:27:35am
    Author:  Julien Bloit

  ==============================================================================
*/


#include <SceneKit/SCNView.h>
#include <SceneKit/SCNScene.h>

#include "SceneView.h"

SceneView::SceneView ()
{
    // nothing for now
}

void
SceneView::resized ()
{
    if (!m_view)
    {
        const auto b = getLocalBounds ();
        if (!b.isEmpty())
        {
            CGRect rect;
            rect.origin.x = b.getX();
            rect.origin.y = b.getY();
            rect.size.height = b.getHeight();
            rect.size.width = b.getWidth();

            SCNView* view = [[SCNView alloc] initWithFrame:rect];
            view.allowsCameraControl = true;
            view.showsStatistics = true;

            NSString *name = @"art.scnassets/ship.scn";
            SCNScene* scene = [SCNScene sceneNamed:name];
            view.scene = scene;
            
            m_view = view;
            setView (view);
        }
    }
}
