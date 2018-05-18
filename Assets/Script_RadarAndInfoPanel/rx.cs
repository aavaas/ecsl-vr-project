using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class rx : MonoBehaviour
{

    /// <summary>
    /// / https://www.youtube.com/watch?v=TAGZxRMloyU&t=9s
    /// https://forum.unity.com/threads/from-unity-ui-to-textmeshpro.463619/
    /// </summary>
    //public Transform player;
    public GameObject player;

    public TextMeshProUGUI infoText;

    // Update is called once per frame
    void Update()
    {
        infoText.text = player.transform.eulerAngles.x.ToString("F2");
    }
}