/*
  ==============================================================================

    SceneView.h
    Created: 21 May 2021 11:27:35am
    Author:  Julien Bloit

  ==============================================================================
*/

#pragma once

#include <JuceHeader.h>

#if JUCE_IOS
#define SceneKitBase juce::UIViewComponent
#endif

#if JUCE_MAC
#define SceneKitBase juce::NSViewComponent
#endif

class SceneView : public SceneKitBase
{
public:
    
    SceneView ();
    
    void
    resized () override;
    
private:
    
    void*
    m_view = nullptr;
};
