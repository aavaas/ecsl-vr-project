using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CameraManager : MonoBehaviour {


    public Camera mainCamera;
    public Camera displayCamera;

    private Camera selectedCamera;

    private void Start()
    {
        selectedCamera = mainCamera;
    }

    public void CameraEnable(Camera camera, bool enabled) {
        camera.gameObject.SetActive(enabled);
    }

    public void ToggleCamera()
    {
        CameraEnable(selectedCamera, false);
        selectedCamera = (selectedCamera == mainCamera ? displayCamera : mainCamera);
        CameraEnable(selectedCamera, true);

    }
}
