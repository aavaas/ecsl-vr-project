using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.XR;

public class CameraReset : MonoBehaviour {

    int deviceIndex = -1;

    private void Start()
    {
        deviceIndex = SteamVR_Controller.GetDeviceIndex(SteamVR_Controller.DeviceRelation.Leftmost);
    }

    // Update is called once per frame
    void Update()
    {

        if (deviceIndex != -1 && SteamVR_Controller.Input(deviceIndex).GetPressDown(SteamVR_Controller.ButtonMask.ApplicationMenu))
        {
            SteamVR_Controller.Input(deviceIndex).TriggerHapticPulse(1000);
            InputTracking.Recenter();
            //GameObject.Find("VRCamera").transform.position = Vector3.zero;
        }
    }
}
