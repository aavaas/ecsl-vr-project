using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;


public class RadarObject
{
    public Image icon { get; set; }
    public GameObject owner { get; set; }
}

public class Radar : MonoBehaviour {

    // To draw Line

    private LineRenderer lineRenderer;
    private float counter;
    private float dist;

    public Transform origin; // use this.position
    public Transform Destination;
    //public Transform Zero;

    public float lineDrawSpeed = 6.0f;
    public float startWidth;
    public float endWidth;
    //

    public Transform playerpos;
    float mapScale = 0.00005f;

    public static List<RadarObject> radObjects = new List<RadarObject>();

    public static void RegisterRadarObject(GameObject o, Image i)
    {
        Image image = Instantiate(i);
        radObjects.Add(new RadarObject() { owner = o, icon = image }); 
    }
   
    void DrawRadarDots()
    {
        foreach (RadarObject ro in radObjects)
        {
            Vector3 radarPos = (ro.owner.transform.position - playerpos.position);
            //Vector3 radarPos = (-ro.owner.transform.position - playerpos.position);
            float distToObject = Vector3.Distance(playerpos.position, ro.owner.transform.position) * mapScale;
             //float deltay = Mathf.Atan2(radarPos.x, radarPos.z) * Mathf.Rad2Deg  - 270 - playerpos.eulerAngles.y;
            float deltay = Mathf.Atan2(radarPos.x, radarPos.z) * Mathf.Rad2Deg   - 270 - playerpos.eulerAngles.y;

            radarPos.x = distToObject * Mathf.Cos(deltay * Mathf.Deg2Rad) * -1;
            radarPos.z = distToObject * Mathf.Sin(deltay * Mathf.Deg2Rad);

            ro.icon.transform.SetParent (this.transform);
            ro.icon.transform.position = new Vector3(radarPos.x , 0, radarPos.z) + this.transform.position;

        }
    }

    // function to draw line

    public void lineDraw()
    {
        if (counter < dist)
        {
            counter += 0.1f / lineDrawSpeed;

            float D = Mathf.Lerp(0, dist, counter);
            Vector3 pointA = origin.position;
           // Vector3 pointA = this.gameObject.transform.position;
            Vector3 pointB = Destination.position;

            //Vector3 PointAalongline = D * Vector3.Normalize(-origin.position + Destination.position) + origin.position;
            Vector3 PointAalongline = D * Vector3.Normalize(-pointA + Destination.position) + pointA;

            lineRenderer.SetPosition(1, PointAalongline);
        }
    }
    /// <summary>
    /// 
    /// 
    /// </summary>
    /// 
    // Use this for initialization
    void Start () {
		
	}
	
	// Update is called once per frame
	void Update () {
        DrawRadarDots();
     //   Drawline.lineDraw();
	}

    void LateUpdate()
    {

        lineRenderer = GetComponent<LineRenderer>();
        lineRenderer.SetPosition(0, origin.position);
        //lineRenderer.SetPosition(0, this.gameObject.transform.position);
        lineRenderer.startWidth = startWidth;
        lineRenderer.endWidth = endWidth;

        dist = Vector3.Distance(origin.position, Destination.position);
       // dist = Vector3.Distance(this.gameObject.transform.position, Destination.position);

        lineDraw();

    }
}
