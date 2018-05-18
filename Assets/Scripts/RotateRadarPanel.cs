using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateRadarPanel : MonoBehaviour {

    public GameObject mainShip;
    private float shipYRotation;
	// Update is called once per frame
	void Update () {
        //currentYRotation = transform.localEulerAngles.y;
        shipYRotation = mainShip.GetComponent<shipControl>().shipYRotation;
        transform.localEulerAngles = new Vector3(transform.localEulerAngles.x, shipYRotation, transform.localEulerAngles.z);
        Debug.Log("test: " + shipYRotation);
    }
}
