using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using TMPro;

public class DAngle : MonoBehaviour {

    public GameObject source;
    public GameObject destination;
    public GameObject world;
    float ang;
    float S;
    float D;
    float W;
    public TextMeshProUGUI infoText;
    Vector2 First;
    Vector2 Second;

	void Start(){
        First = Vector2.zero;
        ang = 0.0f;
	}

    // Update is called once per frame
    void Update()
    {
        //First = source.transform.position;
        //Second = destination.transform.position;
        S = source.transform.eulerAngles.y;
        D = destination.transform.eulerAngles.y;
        W = world.transform.eulerAngles.y;
        if(W-D==0)
            ang =W-D;
        else 
            ang = 360 - (W - D);
       //ang = Vector2.Angle(First, Second);

        infoText.text = ang.ToString("F1");

    }
}
