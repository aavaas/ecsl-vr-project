using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;
public class HelmRotation : MonoBehaviour {

	// Use this for initialization
	public float helmZAngle;
	private float previousAngle = 0;
	public bool isHelmRotating = false;
	public bool isHelmleft;
	public bool isHelmright;
	public GameObject helm;
	
	// Update is called once per frame
	void Update ()
	{
		helmZAngle = transform.localEulerAngles.z;
		//float outAngle =  helm.GetComponent<CircularDrive> ().outAngle; 
		if (helmZAngle != previousAngle) 
		{
			isHelmRotating = true;
		}
		else
		{
			isHelmRotating = false;
		}
		if (helmZAngle < previousAngle)
		{
			isHelmleft = true;
			isHelmright = false;
			//print ("left");
		} 
		else if(helmZAngle > previousAngle)
		{
			isHelmleft = false;
			isHelmright = true;
			//print (" right");
		}
		previousAngle = helmZAngle;
		//print ("The value of Zrotation: "+zRotation+"  "+ isHelmRotating);
	}
}
