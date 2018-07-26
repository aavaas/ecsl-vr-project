using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public enum PlayerType {None, Helm, Captain };

public class TypeButton : MonoBehaviour {

    public static PlayerType Type = PlayerType.None;

    public Text buttonText;

    private bool Hovered;

    private void Start()
    {
        UpdateText(Type);
    }

    public void OnTypeButtonPress()
    {
        if(!Hovered)
        {
            return;
        }

        int index = (int)Type;
        Type = (PlayerType)(++index % System.Enum.GetNames(typeof(PlayerType)).Length);
        UpdateText(Type);
    }

    private void UpdateText(PlayerType _type)
    {
        buttonText.text = _type.ToString();
    }

    // hovering allowes one hand to hover and the other to click
        // needs same hand hover and click, but good for a temporary solution
    public void Hover(bool hovered)
    {
        Hovered = hovered;
    }
	
}
