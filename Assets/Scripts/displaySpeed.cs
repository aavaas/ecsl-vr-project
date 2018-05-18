using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEngine.Networking;
public class displaySpeed : NetworkBehaviour {

    // Use this for initialization
    public GameObject world;
    public Text currentTextSpeed;
    public Text desiredTextSpeed;
    public GameObject header;
	public GameObject desiredHeader;
    public bool isHelmClicked;
    public bool isCaptainClicked;

    public float currentSpeed;
    public float desiredSpeed;

    [SyncVar]
    public float sliderValue;

	[SyncVar]
	public float desiredAngle;

    private float cs;
   // private float ds;
	
	// Update is called once per frame
	void Update () {
        isHelmClicked = helmButton.isHelm;
        isCaptainClicked = CaptainButton.isCaptain;
        print("The helm is clicked " + isHelmClicked);
        print("The captain is clicked" + isCaptainClicked);
        //only on server
        if (isHelmClicked)
        {
            sliderValue = header.GetComponent<sliderHead>().value;
            desiredAngle = desiredHeader.GetComponent<RotateDesiredHeading>().targetYRotation;
        }
  
        currentSpeed = world.GetComponent<shipControl>().currentSpeed;
        desiredSpeed = world.GetComponent<shipControl>().desiredSpeed;
        


        cs = currentSpeed;
        cs = Mathf.Round(currentSpeed);
        currentTextSpeed.text = cs.ToString ();
		desiredTextSpeed.text = desiredSpeed.ToString ();
	}
}
