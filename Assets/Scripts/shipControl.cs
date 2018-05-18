using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using System;
using UnityEngine.Networking;
using System.Net;
using System.Net.Sockets;

using Valve.VR.InteractionSystem;

public class shipControl : MonoBehaviour {

	// for ship movement
	public GameObject headSlider;
    public GameObject world;
	private float value;
	private float acceleration = 1;
    private float velocity = 0;
    private float DesiredVelocity = 0;
	//for ship rotation
	public GameObject targetRotation;
	public float shipYRotation;
	public float targetYRotation;
	//Display the speed and heading
	//public Text currentTextSpeed;
	//public Text desiredTextSpeed;
	public Text currentTextHeading;
	public Text desiredTextHeading;
	public float currentSpeed;
	public float desiredSpeed;
	private float currentHeading;
	private float desiredHeading;
	//Start
	void Start () 
	{
		currentSpeed = 0;
		desiredSpeed = 0;
		currentHeading = 0;
		desiredHeading = 0;
		displaySpeedandHeading(0);
		displaySpeedandHeading(1);
		displaySpeedandHeading(2);
		displaySpeedandHeading(3);
	}

    public string LocalIPAddress() {
        IPHostEntry host;
        string localIP = "";
        host = Dns.GetHostEntry(Dns.GetHostName());
        foreach (IPAddress ip in host.AddressList) {
            if (ip.AddressFamily == AddressFamily.InterNetwork) {
                localIP = ip.ToString();
                break;
            }
        }
        return localIP;
    }
    //Update
    void Update () {


        // for movement of the ship

        //server
        if (world.GetComponent<displaySpeed>().isHelmClicked)
        {
            value = headSlider.GetComponent< sliderHead> ().value;
            targetYRotation = targetRotation.GetComponent<RotateDesiredHeading> ().targetYRotation;
        }
        //client
        if (world.GetComponent<displaySpeed>().isCaptainClicked)
        {
            value = world.GetComponent<displaySpeed>().sliderValue;
            targetYRotation = world.GetComponent<displaySpeed>().desiredAngle;
        }

        shipMove(value);
		//Display speed
		displaySpeedandHeading(0);
		displaySpeedandHeading(1);
		//Display Heading
		displaySpeedandHeading(2);
		displaySpeedandHeading(3);
		// for Rotation of the ship
		shipYRotation = transform.localEulerAngles.y;
		if(velocity>0)
			shipRotate (shipYRotation, targetYRotation);
	}
	//Function to move ship
	void shipMove (float value) {
		if (value > .25f && value < .47f) {
			//print ("1/3 speed");
			DesiredVelocity = 7.0f;
			if (velocity < 7) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			else if  (velocity >= 7) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			//transform.position += Vector3.forward * Time.deltaTime * velocity;
			//transform.Translate (Vector3.right * Time.deltaTime * velocity);
		} 
		else if(value > .46f && value < .61) {
			print ("2/3 speed");
			DesiredVelocity = 14.0f;
			if (velocity < 14) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			else if (velocity >= 14) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			//transform.position += Vector3.forward * Time.deltaTime * velocity;
			//transform.Translate (Vector3.right * Time.deltaTime * velocity);
		}
		else if (value > .60f && value < .80f) {
			print ("standard speed");
			DesiredVelocity = 20.0f;
			if (velocity < 20) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			else if (velocity >= 20) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			//transform.position += Vector3.forward * Time.deltaTime * velocity;
			//transform.Translate (Vector3.right * Time.deltaTime * velocity);
		}
		else if (value > .79f && value < .95f) {
			print ("Full speed");
			DesiredVelocity = 25.0f;
			if (velocity < 25) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			else if (velocity >= 25) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			//transform.position += Vector3.forward * Time.deltaTime * velocity;
			//transform.Translate (Vector3.right * Time.deltaTime * velocity);
		}
		else if (value > .94f && value <= 1) {
			print ("Fnalk speed");
			DesiredVelocity = 30.0f;
			if (velocity < 30) {
				velocity = velocity + acceleration * Time.deltaTime;
			}
			else if (velocity >= 30) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			//transform.position += Vector3.forward * Time.deltaTime * velocity;
			//transform.Translate (Vector3.right * Time.deltaTime * velocity);
		}
		else if (value < .22f) {
			DesiredVelocity = 0.0f;
			if (velocity > 0) {
				velocity = velocity - acceleration * Time.deltaTime;
			}
			//transform.Translate (Vector3.right * Time.deltaTime * velocity);
			//transform.position += Vector3.forward * Time.deltaTime * velocity;
		}
		transform.Translate (-1* Vector3.right * Time.deltaTime * velocity);
	}
	//Function to rotate ship
	void shipRotate ( float currentAngle, float targetAngle) {
        //print ("Ship Current angle: " + currentAngle);
        //print ("ship Desired angle:" + targetAngle);
        targetAngle = 360 - targetAngle;
		float diffAngle = Mathf.Abs(currentAngle - targetAngle);
		//print ("The difference angle between current and desired heading is : " + diffAngle);
		if (diffAngle > 0) {
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
	//Function to diplay the speed and heading
	void displaySpeedandHeading(int value) {
		if (value == 0) {
			float cs;
			currentSpeed = velocity;
			cs = Mathf.Round (currentSpeed);
			//currentTextSpeed.text = cs.ToString ();
		}else if (value == 1) {
			float ds;
			desiredSpeed = DesiredVelocity;
			ds = Mathf.Round (desiredSpeed);
			//desiredTextSpeed.text = ds.ToString ();
		}else if (value == 2) {
			float ch;
			currentHeading = shipYRotation;
			ch = Mathf.Round (currentHeading);
            if(ch != 0)
                ch = 360 - ch;
			currentTextHeading.text = ch.ToString ();
		}else if (value == 3) {
			float dh;
			desiredHeading = targetYRotation;
			dh = Mathf.Round (desiredHeading);
			desiredTextHeading.text = dh.ToString ();
		}
	}
		
}

