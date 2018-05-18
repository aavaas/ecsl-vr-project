using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class CaptainButton : MonoBehaviour {
    public static bool isCaptain;
	// Use this for initialization
	void Start () {
        isCaptain = false;
	}
	
	// Update is called once per frame
	void Update () {
		
	}
    public void onClickCaptain()
    {
        isCaptain = true;
    }
}
