using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class shipControl : MonoBehaviour {

	//Getting the target angle from the target pointer
	public GameObject pointerTarget;
	public GameObject helm;
	// for ship Rotation
	private float previousAngle;
	private float targetAngle;
	//for currentPointer
	public bool isshipRotate;
	public float yRotationShip;
	public GameObject currentHeading;
	private float currentangle;
	// for speed of the ship
	public GameObject headSlider;
	private float value;
	private float acceleration = 1;
	private float velocity = 0;
	private bool targetactive = false;
	private float diffangle;
	void Update ()
	{
		// for speed of the ship
		value = headSlider.GetComponent< sliderHead> ().value;
		//print ("The value of value is: " + value);
		if (value > .25f && value < .47f) {
			//print ("1/3 speed");
			if (velocity < 7) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			if (velocity >= 7) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			transform.position += Vector3.forward * Time.deltaTime * velocity;
		} 
		if (value > .46f && value < .61) {
			//print ("2/3 speed");
			if (velocity < 14) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			if (velocity >= 14) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			transform.position += Vector3.forward * Time.deltaTime * velocity;
		}
		if (value > .60f && value < .80f) {
			//print ("standard speed");
			if (velocity < 20) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			if (velocity >= 20) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			transform.position += Vector3.forward * Time.deltaTime * velocity;
		}
		if (value > .79f && value < .95f) {
			//print ("Full speed");
			if (velocity < 25) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			if (velocity >= 25) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			transform.position += Vector3.forward * Time.deltaTime * velocity;
		}
		if (value > .94f && value <= 1) {
			//print ("Fnalk speed");
			if (velocity < 30) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			if (velocity >= 30) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			transform.position += Vector3.forward * Time.deltaTime * velocity;
		}
		if (value < .22f) {
			if (velocity > 0) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			transform.position += Vector3.forward * Time.deltaTime * velocity;
		}
		//print ("The value of velocity is: " + velocity);
		/////////////// for Rotation
		Vector3 eulerAngles = transform.rotation.eulerAngles;
		yRotationShip = eulerAngles.y;
		//print ("The current heading angle is" + yRotationShip); 
		//Vector3 objectPosition = transform.position;
		if (helm.GetComponent< HelmRotation> ().isHelmRotating) {
			targetAngle = pointerTarget.GetComponent<DesiredHeading> ().yRotation;
			targetactive = true;
		}
		currentangle = currentHeading.GetComponent< RotateCurrentHeading> ().yRotationCurrentHeading;
	//	print (" The desired heading angle is" + targetAngle);
		//print (" The current heading angle is" + yRotationShip);
		//print (" Thecurrent  heading pointer angle is " + currentangle);
		diffangle = yRotationShip-targetAngle;
		print (" The differnece  angle is" +diffangle );
		if (targetactive)
		{
			if (targetAngle - yRotationShip > 2) 
			{
				transform.Rotate(0,.002f,0);

			} else if (targetAngle - yRotationShip < 3)
			{
				transform.Rotate(0,-.002f,0);
			}
		} 
		else 
		{
			transform.Rotate (0, 0, 0);
			targetactive = false;
		}
		if (yRotationShip != previousAngle) {
			isshipRotate = true;
		} else {
			isshipRotate = false;
		}
		previousAngle = yRotationShip;
	}
}
