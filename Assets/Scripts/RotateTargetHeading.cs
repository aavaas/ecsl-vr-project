using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class RotateTargetHeading : MonoBehaviour 
{

	// Use this for initialization
	public GameObject helm;

	// Update is called once per frame
	void Update () 
	{
		var x = Input.GetAxis("Horizontal") * Time.deltaTime * 150.0f;
		float helmZrotate = helm.GetComponent< HelmRotation> ().zRotation;
		if (helm.GetComponent< HelmRotation> ().isHelmRotating)
		{
			if (helm.GetComponent< HelmRotation> ().isleft)
			{
				transform.Rotate (0, -helmZrotate / 360, 0);
			} 
			else 
			{
				transform.Rotate (0, helmZrotate / 360, 0);
			}
		}
	}
}
