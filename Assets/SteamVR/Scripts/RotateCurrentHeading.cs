using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateCurrentHeading : MonoBehaviour {

	// Use this for initialization
	public GameObject ship;
	public float yRotationCurrentHeading;
	// Update is called once per frame
	void Update () 
	{
		Vector3 eulerAngles = transform.rotation.eulerAngles;
		yRotationCurrentHeading = eulerAngles.y;
		//var x = Input.GetAxis("Horizontal") * Time.deltaTime * 150.0f;
		float shipZrotate = ship.GetComponent< shipControl> ().yRotationShip;
		if (ship.GetComponent< shipControl> ().isshipRotate)
		{
			transform.Rotate(0,.02f,0);
		}
	}
}
