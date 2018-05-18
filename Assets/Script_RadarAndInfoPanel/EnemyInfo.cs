using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class EnemyInfo : MonoBehaviour {

    //// Use this for initialization
    //void Start () {

    //}

    // ref https://answers.unity.com/questions/699565/how-to-get-a-variable-value-from-another-scriptc.html ///
    Vector3 player = Hand.pos;
    
    public TextMeshProUGUI infoText;

    // Update is called once per frame
    void Update () {
		//infoText.text = player.position.x.ToString("F0");
       
        infoText.text = Hand.pos.x.ToString("F4");
        if(player.x > 0.2)
        {
            Debug.Log("X: " + Hand.ex);
        }
        
    }
}
