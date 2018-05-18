using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class helmButton : MonoBehaviour {
    public static bool isHelm;
	// Use this for initialization
	void Start () {
        isHelm = false;
	}
	
	// Update is called once per frame
	void Update () {
		
	}
    public void onClickHelm()
    {
        isHelm = true;
		print("ddddddddddddddddddddddddddd");
    }
}
