using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR;

public class controller : MonoBehaviour {

    // Use this for initialization
    public Vector2 touchValue;
    public bool controllerInput = false;
    public SteamVR_TrackedObject mtrackeObject = null;
    public SteamVR_Controller.Device mDevice;

    void Awake() {
        mtrackeObject = GetComponent<SteamVR_TrackedObject>();
    }

    // Update is called once per frame
    void Update()
    {
        print("The right controller on");
        mDevice = SteamVR_Controller.Input((int)mtrackeObject.index);
        if (mDevice.GetPressDown(SteamVR_Controller.ButtonMask.Touchpad))
        {
            //controllerInput = false;
        }
        if (mDevice.GetPressUp(SteamVR_Controller.ButtonMask.Touchpad)) 
        {
            controllerInput = true;
        }
        touchValue = mDevice.GetAxis(EVRButtonId.k_EButton_SteamVR_Touchpad);
        print ("ControllerInput:"+controllerInput);

    }

}
