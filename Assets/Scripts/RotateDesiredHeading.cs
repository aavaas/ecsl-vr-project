using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateDesiredHeading : MonoBehaviour {

	// Use this for initialization
	public GameObject helm;
	public GameObject DesiredHeading;
	public GameObject world;
	private float helmZAngle;
	public bool isTargetChanging;
	private float previousAngle;
	public float targetYRotation;
	// Update is called once per frame
	void Update ()
	{     

		targetYRotation = transform.localEulerAngles.y;
		helmZAngle =  helm.GetComponent< HelmRotation> ().helmZAngle; 
		if (helm.GetComponent< HelmRotation> ().isHelmRotating && world.GetComponent<displaySpeed>().isHelmClicked)
		{
			if (helm.GetComponent< HelmRotation> ().isHelmleft) 
			{
				transform.Rotate (0, -helmZAngle/360, 0);
			}
			else if(helm.GetComponent< HelmRotation> ().isHelmright)
			{
				transform.Rotate (0, helmZAngle/360, 0);
			}
		} 
		if (targetYRotation != previousAngle) 
		{
			isTargetChanging = true;
		}
		else
		{
			isTargetChanging = false;
		}
		previousAngle =targetYRotation;
	}
}
