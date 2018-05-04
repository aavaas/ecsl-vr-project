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
    private float translation;
    public Vector2 touchValue;
    private bool controllerInput;
    public GameObject controller;
    private Vector2 point;
    public bool isleft;

    void Update ()
     {

        point = controller.GetComponent<controller>().touchValue;
        print("The vertical translation is: " +translation);
        if (translation>0)
        {
           // transform.position += Vector3.forward * Time.deltaTime * 1000;
        }
        Vector3 objectPosition = transform.position;
		if (helm.GetComponent< HelmRotation> ().isHelmRotating)
		{
			//targetAgnel = controller.GetComponent< HelmRotation> ().zRotation;
		}
        Vector3 eulerAngles = transform.rotation.eulerAngles;
        angle = eulerAngles.z;
        /////////////////////////////////////////////////////
        if(controller.GetComponent<controller>().controllerInput)
        {
            if (point.y > 0) {
                transform.position += Vector3.forward * Time.deltaTime * 1000;
            }
            if (point.x > 0) {
                transform.Rotate(0, 2, 0);
                isleft = false;
            } else {
                transform.Rotate(0, -2, 0);
                isleft = true;
            }
        }
       
        if (angle != previousAngle)
        {
            isshipRotate = true;
        } else 
        {
            isshipRotate = false;
        }
        angle = previousAngle;
    }

    
}
