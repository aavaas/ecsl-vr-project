using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class changePivot : MonoBehaviour {

	// Use this for initialization
	public float gizmoSize = .75f;
	
	void OnDrawGizmos()
	{
		Gizmos.DrawWireSphere (transform.position, gizmoSize);
	}
}
