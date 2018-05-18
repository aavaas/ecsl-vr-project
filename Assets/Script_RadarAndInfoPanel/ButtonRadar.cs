using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class ButtonRadarObject
{
    public Button btn { get; set; }
    public GameObject owner { get; set; }
}

public class ButtonRadar : MonoBehaviour
{

    // To draw Line

    private LineRenderer lineRenderer;
    private float counter;
    private float dist;

    //public Transform origin; // use this.position
    //public Transform Destination;
    //public Transform Zero;

    public float lineDrawSpeed = 6.0f;
    public float startWidth;
    public float endWidth;

    //public Button button1;
   // public GameObject track1;
    //

    public Transform playerpos;
    float mapScale = 0.00005f;
    float angle = -60.0f;

    

    public static List<ButtonRadarObject> radObjects = new List<ButtonRadarObject>();

    public static void RegisterRadarObject(GameObject o, Button i)
    {
        Button button = Instantiate(i);
        radObjects.Add(new ButtonRadarObject() { owner = o, btn = button });
    }

    // for radar button
    void TaskOnClick()
    {
        Debug.Log("You have clicked the button!");
    }

    void DrawRadarDots()
    {
        foreach (ButtonRadarObject ro in radObjects)
        {
            Vector3 radarPos = (ro.owner.transform.position - playerpos.position);
            // Vector3 radarPos = (ro.owner.transform.localPosition - playerpos.localPosition);
            //Vector3 radarPos = (-ro.owner.transform.position - playerpos.position);
            float distToObject = Vector3.Distance(playerpos.position, ro.owner.transform.position) * mapScale;
            //float distToObject = Vector3.Distance(playerpos.localPosition, ro.owner.transform.localPosition) * mapScale;
            float deltay = Mathf.Atan2(radarPos.x, radarPos.z) * Mathf.Rad2Deg - 35 - playerpos.eulerAngles.y;
            //float deltay = Mathf.Atan2(radarPos.x, radarPos.z) * Mathf.Rad2Deg -270- playerpos.localEulerAngles.y ;

            radarPos.x = distToObject * Mathf.Cos((deltay - angle) * Mathf.Deg2Rad) * -1;
            radarPos.z = distToObject * Mathf.Sin((deltay - angle) * Mathf.Deg2Rad);
            radarPos.y = distToObject * angle * Mathf.Deg2Rad;

            ro.btn.transform.SetParent(this.transform);

            //ro.btn.transform.position = new Vector3(radarPos.x, 0, radarPos.z) + this.transform.position;
            ro.btn.transform.localPosition = new Vector3(radarPos.x, radarPos.z, 0);

        }
    }

    // function to draw line

    public void lineDraw()
    {
        //if (counter < dist)
        //{
        //    counter += 0.1f / lineDrawSpeed;

        //    float D = Mathf.Lerp(0, dist, counter);
        //    Vector3 pointA = origin.position;
        //    // Vector3 pointA = this.gameObject.transform.position;
        //    Vector3 pointB = Destination.position;

        //    //Vector3 PointAalongline = D * Vector3.Normalize(-origin.position + Destination.position) + origin.position;
        //    Vector3 PointAalongline = D * Vector3.Normalize(-pointA + Destination.position) + pointA;

        //    lineRenderer.SetPosition(1, PointAalongline);
        //}
    }
    /// <summary>
    /// 
    /// 
    /// </summary>
    /// 
    // Use this for initialization
    void Start()
    {
        foreach (ButtonRadarObject ro in radObjects)
        {
            Button button = ro.btn.GetComponent<Button>();
            button.onClick.AddListener(TaskOnClick);
        }
            
    }

    // Update is called once per frame
    void Update()
    {
        DrawRadarDots();
        //   Drawline.lineDraw();
        //TaskOnClick();
       // button1.transform.localPosition = track1.transform.position; 
    }

    void LateUpdate()
    {

        //lineRenderer = GetComponent<LineRenderer>();
        //lineRenderer.SetPosition(0, origin.position);
        ////lineRenderer.SetPosition(0, this.gameObject.transform.position);
        //lineRenderer.startWidth = startWidth;
        //lineRenderer.endWidth = endWidth;

        //dist = Vector3.Distance(origin.position, Destination.position);
        //// dist = Vector3.Distance(this.gameObject.transform.position, Destination.position);

        //lineDraw();

    }
}
