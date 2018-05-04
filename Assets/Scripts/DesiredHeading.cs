﻿using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DesiredHeading : MonoBehaviour {


	public GameObject helm;
	public float yRotation;
	public bool isRotateTarget;
	private float previousAngle;
	// Update is called once per frame
	void Update () 
	{
		//var x = Input.GetAxis("Horizontal") * Time.deltaTime * 150.0f;
		Vector3 eulerAngles = transform.rotation.eulerAngles;
		yRotation = eulerAngles.y;
		float helmZrotate = helm.GetComponent< HelmRotation> ().zRotation;
		if (helm.GetComponent< HelmRotation> ().isHelmRotating)
		{
			print ("the helm is rotating");
			if (helm.GetComponent< HelmRotation> ().isleft) 
			{
				transform.Rotate (0, -helmZrotate, 0);
			}
			else 
			{
				transform.Rotate (0, helmZrotate / 360, 0);
			}
		} 
		else 
		{
			print ("the helm is not rotating");
		}
		if (yRotation != previousAngle) 
		{
			isRotateTarget = true;
		}
		else
		{
			isRotateTarget = false;
		}
		previousAngle = yRotation;
	} 

}
