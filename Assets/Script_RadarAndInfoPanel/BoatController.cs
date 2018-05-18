using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class BoatController : MonoBehaviour {

    public float turnSpeed = 1000f;
    public float acceSpeed = 1000f;
    public float Speed = 100f;
    public float rotationSpeed = 100f;

   // private Rigidbody rbody;
	// Use this for initialization
	void Start () {
        //rbody = GetComponent<Rigidbody>();
	}
	
	// Update is called once per frame
	void Update () {
       // float h = Input.GetAxis("Horizontal");
       // float v = Input.GetAxis("Vertical");

        //rbody.AddTorque(0f, h * turnSpeed * Time.deltaTime, 0f);
        //rbody.AddForce(transform.forward * v * acceSpeed * Time.deltaTime);

        if (Input.GetKey(KeyCode.I))
        {
            transform.Translate(Vector3.left * Speed * Time.deltaTime);
        }

            

        // Backward movement
        if (Input.GetKey(KeyCode.K))
        {
            transform.Translate(Vector3.right * Speed * Time.deltaTime);
        }
            

        // Left movement
        if (Input.GetKey(KeyCode.J))
        {
            transform.Rotate(Vector3.down * rotationSpeed * Time.deltaTime);
        }
            

        // Right movement
        if (Input.GetKey(KeyCode.L))
        {
            transform.Rotate(Vector3.up * rotationSpeed * Time.deltaTime);
        }
            
    }
}
