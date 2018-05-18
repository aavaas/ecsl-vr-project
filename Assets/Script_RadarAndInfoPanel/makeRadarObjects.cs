using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class makeRadarObjects : MonoBehaviour {

    public Button button;
    // Use this for initialization

    void Start()
    {
        ButtonRadar.RegisterRadarObject(this.gameObject, button);
    }

    // Update is called once per frame
    void Update()
    {

    }
}
