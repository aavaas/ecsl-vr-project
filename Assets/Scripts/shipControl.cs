using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using Valve.VR.InteractionSystem;

public class shipControl : MonoBehaviour {

	// for ship movement
	public GameObject headSlider;
	private float value;
	private float acceleration = 1;
	private float velocity = 0;
	//for ship rotation
	public GameObject targetRotation;
	public float shipYRotation;
	public float targetYRotation;
	void Update () {
		// for movement of the ship
		value = headSlider.GetComponent< sliderHead> ().value;
		shipMove(value);
		/////////////// for Rotation of the ship
		shipYRotation = transform.localEulerAngles.y;
		targetYRotation = targetRotation.GetComponent<RotateDesiredHeading> ().targetYRotation;
		shipRotate (shipYRotation, targetYRotation);
	}
	//Function to move ship
	void shipMove (float value) {
		if (value > .25f && value < .47f) {
			//print ("1/3 speed");
			if (velocity < 7) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			else if  (velocity >= 7) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			//transform.position += Vector3.forward * Time.deltaTime * velocity;
			transform.Translate (Vector3.right * Time.deltaTime * velocity);
		} 
		else if(value > .46f && value < .61) {
			print ("2/3 speed");
			if (velocity < 14) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			else if (velocity >= 14) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			//transform.position += Vector3.forward * Time.deltaTime * velocity;
			transform.Translate (Vector3.right * Time.deltaTime * velocity);
		}
		else if (value > .60f && value < .80f) {
			print ("standard speed");
			if (velocity < 20) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			else if (velocity >= 20) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			transform.position += Vector3.forward * Time.deltaTime * velocity;
		}
		else if (value > .79f && value < .95f) {
			print ("Full speed");
			if (velocity < 25) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			else if (velocity >= 25) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			transform.position += Vector3.forward * Time.deltaTime * velocity;
		}
		else if (value > .94f && value <= 1) {
			print ("Fnalk speed");
			if (velocity < 30) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			else if (velocity >= 30) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			transform.position += Vector3.forward * Time.deltaTime * velocity;
		}
		else if (value < .22f) {
			if (velocity > 0) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			transform.Translate (Vector3.right * Time.deltaTime * velocity);
			//transform.position += Vector3.forward * Time.deltaTime * velocity;
		}
	}
	//Function to rotate ship
	void shipRotate ( float currentAngle, float targetAngle) {
		//print ("Ship Current angle: " + currentAngle);
		//print ("ship Desired angle:" + targetAngle);
		float diffAngle = Mathf.Abs(currentAngle - targetAngle);
		//print ("The difference angle between current and desired heading is : " + diffAngle);
		if (diffAngle > 1) {
			if (currentAngle > targetAngle && diffAngle >= 180) {
				transform.Rotate (0, 0.02f, 0);
			} else if (currentAngle < targetAngle && diffAngle >= 180) {
				transform.Rotate (0, -0.02f, 0);
			} else if (currentAngle > targetAngle && diffAngle < 180) {
				transform.Rotate (0, -0.02f, 0);
			}else if (currentAngle < targetAngle && diffAngle <180) {
				transform.Rotate (0, 0.02f, 0);
			}
		}
	}
}

