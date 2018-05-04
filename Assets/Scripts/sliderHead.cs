using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using Valve.VR.InteractionSystem;

public class sliderHead : MonoBehaviour {

	// Use this for initialization
	public GameObject head;
	public float value;

	// Update is called once per frame
	void Update ()
	{
		 value = head.GetComponent< LinearMapping> ().value;
		
	}
}
