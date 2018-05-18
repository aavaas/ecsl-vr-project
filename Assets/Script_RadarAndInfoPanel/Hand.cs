using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[RequireComponent(typeof(Controller))]
public class Hand : MonoBehaviour
{
    GameObject heldObject;
    Controller controller;

    Rigidbody simulator;

    public static Vector3 pos = Vector3.zero;
    public static Quaternion heading;
    public static float ex = 0;

    void Start()
    {
        simulator = new GameObject().AddComponent<Rigidbody>();
        simulator.name = "simulator";
        simulator.transform.parent = transform.parent;

        controller = GetComponent<Controller>();
    }

    void Update()
    {
        if (heldObject)
        {
            
           // simulator.velocity = (transform.position - simulator.position) * 0f;
            
            if (controller.controller.GetPressUp(Valve.VR.EVRButtonId.k_EButton_SteamVR_Trigger))
            {
              
                heldObject = null;
            }
            
        }
        else
        {
            if (controller.controller.GetPressDown(Valve.VR.EVRButtonId.k_EButton_SteamVR_Trigger))
            {
               
                Collider[] cols = Physics.OverlapSphere(transform.position, 0.1f);

                foreach (Collider col in cols)
                {
                    if (heldObject == null && col.GetComponent<HeldObject>() && col.GetComponent<HeldObject>().parent == null)
                    {
                        heldObject = col.gameObject;
                        pos = heldObject.transform.position;
                        ex = pos.x;

                    }
                }

                
                heading = heldObject.transform.rotation;
                //px = pos.x;

                Debug.Log("Pos: " + pos);
            }
        }


    }
    //return heldObject;
}
