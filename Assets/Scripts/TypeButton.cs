using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Events;
using UnityEngine.UI;
using Valve.VR.InteractionSystem;

public enum PlayerType {None, Helm, Captain };

public class TypeButton : MonoBehaviour {

    public static PlayerType Type = PlayerType.None;

    public Text buttonText;

    private void Start()
    {
        UpdateText(Type);
        //GetComponent<UIElement>().onHandClick.AddListener();
    }

    public void PressHand(Hand hand)
    {
        OnTypeButtonPress();
    }

    public void OnTypeButtonPress()
    {
        //print("Pressed!");
        int index = (int)Type;
        Type = (PlayerType)(++index % System.Enum.GetNames(typeof(PlayerType)).Length);
        UpdateText(Type);
    }

    private void UpdateText(PlayerType _type)
    {
        buttonText.text = _type.ToString();
    }
}
