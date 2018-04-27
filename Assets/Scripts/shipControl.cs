using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class shipControl : MonoBehaviour {

	// Use this for initialization
	private float torque = 1500f;
	private float acceleration = 500f;
	public GameObject helm;
	public float angle;
	public bool isshipRotate;
	private float previousAngle;
	private float targetAgnel;

	void Update ()
	{
		//transform.position += Vector3.forward * Time.deltaTime * 500;
		Vector3 objectPosition = transform.position;
		if (helm.GetComponent< HelmRotation> ().isHelmRotating)
		{
			targetAgnel = helm.GetComponent< HelmRotation> ().zRotation;
		}
		Vector3 origin = new Vector3 (0, 0, 0);
		angle = Vector3.Angle (transform.forward, origin);
		print("The current heading is: "+angle);
		if (angle != previousAngle) {
			isshipRotate = true;
		} else
		{
			isshipRotate = false;
		}
		angle = previousAngle;
	}
}
