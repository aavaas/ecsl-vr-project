using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class PlayerController : NetworkBehaviour {


    GameObject lcontrol;
    GameObject rcontrol;
    //Transform spawn;

	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        if (!isLocalPlayer) {
            return;
        }
        this.gameObject.transform.GetChild(0).rotation = Camera.main.transform.rotation;
        this.gameObject.transform.GetChild(0).position = Camera.main.transform.position;
        if (lcontrol != null) {
            this.gameObject.transform.GetChild(1).rotation = lcontrol.transform.rotation;
            this.gameObject.transform.GetChild(1).position = lcontrol.transform.position;
        }
        if (rcontrol != null) {
            this.gameObject.transform.GetChild(2).rotation = rcontrol.transform.rotation;
            this.gameObject.transform.GetChild(2).position = rcontrol.transform.position;
        }

        //print(spawn.position);
    }

    public override void OnStartLocalPlayer() {       
        rcontrol = GameObject.Find("Controller (right)");
        lcontrol = GameObject.Find("Controller (left)");
        GameObject.Find("[CameraRig]").transform.position = this.transform.position;
    }
}
