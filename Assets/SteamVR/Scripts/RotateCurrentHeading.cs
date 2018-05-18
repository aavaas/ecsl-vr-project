using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateCurrentHeading : MonoBehaviour {
	public float currentYRotation;
	public GameObject CurrentHeading;
	public GameObject Ship;
	private float shipYRotation;
	private float previousAngle =0f;
	void Update () 
	{
		currentYRotation = transform.localEulerAngles.y;
		shipYRotation = Ship.GetComponent<shipControl>().shipYRotation;
        if (shipYRotation != 0)
            shipYRotation = 360 - shipYRotation;
		transform.localEulerAngles = new Vector3(transform.localEulerAngles.x, shipYRotation,transform.localEulerAngles.z);

	}
}
