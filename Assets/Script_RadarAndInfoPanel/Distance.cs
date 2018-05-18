using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class Distance : MonoBehaviour {
    public GameObject source;
    public GameObject destination;
    public GameObject world;
   // float dist;
    public TextMeshProUGUI infoText;

	
	// Update is called once per frame
	void Update () {
        //sourceTodestination();
        float dist = Vector3.Distance(source.transform.position, (destination.transform.position + world.transform.position));

        infoText.text =dist.ToString("F0");

    }
}
