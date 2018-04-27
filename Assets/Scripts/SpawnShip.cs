using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.Networking;

public class SpawnShip : NetworkBehaviour
{

	// Use this for initialization
	public GameObject ddg51Ship;
	
	// Update is called once per frame
	public override void OnStartServer()
	{
		var spawnPosition = new Vector3(0,0,0);
		var spawnRotation = Quaternion.Euler (0, 0, 0);
		var ship = (GameObject)Instantiate(ddg51Ship, spawnPosition, spawnRotation);
		NetworkServer.Spawn(ship);
	}
}
