using System.Collections;
using System.Collections.Generic;
using UnityEngine;

// Based off of the YouTube video at: https://www.youtube.com/watch?v=wYAlky1aZn4

[RequireComponent(typeof(MeshCollider))]
public class MeshColliderCombiner : MonoBehaviour
{
    MeshCollider meshCollider;
    /**
     * <summary>
     *      Get all of the meshes in the children and combine it into one mesh
     * </summary>
     */
    public void CombineMeshes()
    {
        meshCollider = GetComponent<MeshCollider>();

        // Get the original position and rotation
        Quaternion originalRotation = transform.rotation;
        Vector3 originalPosition = transform.position;

        // Reset the transform
        transform.rotation = Quaternion.identity;
        transform.position = Vector3.zero;

        // Get the meshes from the children
        MeshFilter[] filters = GetComponentsInChildren<MeshFilter>();
        Debug.Log(name + " is comining " + filters.Length + " meshes!");

        // Create a final mesh that contains all of the other meshes
        Mesh finalMesh = new Mesh();

        // Create a CombineInstance that will be used to combine all of the filters
        CombineInstance[] combiners = new CombineInstance[filters.Length];

        for (int i = 0; i < filters.Length; i++)
        {
            //Get the information for each filter
            combiners[i].subMeshIndex = 0;
            combiners[i].mesh = filters[i].sharedMesh;
            combiners[i].transform = filters[i].transform.localToWorldMatrix;

        }

        // Combine all of the CombineInstances in the final mesh
        finalMesh.CombineMeshes(combiners);

        //Set the collider mesh to the final mesh
        meshCollider.sharedMesh = finalMesh;

        // Return the rotation and the position to the originals
        transform.rotation = originalRotation;
        transform.position = originalPosition;
    }
}
