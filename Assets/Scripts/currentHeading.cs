using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class currentHeading : MonoBehaviour
{

	// Use this for initialization
	public GameObject ship;

	// Update is called once per frame
	void Update () 
	{
		var x = Input.GetAxis("Horizontal") * Time.deltaTime * 150.0f;
		float shiprotate = ship.GetComponent< shipControl> ().angle;
		transform.Rotate (0, shiprotate, 0);
	}
}
