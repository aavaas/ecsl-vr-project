using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class HelmRotation : MonoBehaviour {

	// Use this for initialization
	public float zRotation;
	private float previousAngle = 0;
	public bool isHelmRotating = false;
	public bool isleft;
	public bool isright;
	
	// Update is called once per frame
	void Update ()
	{
		Vector3 eulerAngles = transform.rotation.eulerAngles;
		zRotation = eulerAngles.z;
		if (zRotation - previousAngle>.5) 
		{
			isHelmRotating = true;
		}
		else
		{
			isHelmRotating = false;
		}
		if (zRotation < previousAngle)
		{
			isleft = true;
			isright = false;
			//print ("left");
		} 
		else if(zRotation > previousAngle)
		{
			isleft = false;
			isright = true;
			//print (" right");
		}
		previousAngle = zRotation;
		//print ("The value of Zrotation: "+zRotation+"  "+ isHelmRotating);
	}
}
