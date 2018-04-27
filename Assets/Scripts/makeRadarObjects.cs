using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class makeRadarObjects : MonoBehaviour {

    public Image image1 ;
	// Use this for initialization
	void Start () {
        Radar.RegisterRadarObject(this.gameObject, image1);
        //Radar.RegisterRadarObject(this.gameObject, image2);
       // Radar.RegisterRadarObject(this.gameObject, image3);
    }
	
	// Update is called once per frame
	void Update () {
		
	}
}
