using System.Collections;
using System.Collections.Generic;
using System.IO;
using UnityEngine;

[RequireComponent(typeof(MeshFilter)),
    RequireComponent(typeof(MeshCollider)),
    RequireComponent(typeof(MeshRenderer))]
public class TeleportAreaFromNavMesh : MonoBehaviour
{
    public Mesh mesh;
    

    private MeshFilter meshFilter;
    private MeshCollider meshCollider;
    private MeshRenderer meshRenderer;

    private void Awake()
    {
        mesh = new Mesh();
        mesh.name = "NavMesh Mesh";
        meshFilter = GetComponent<MeshFilter>();
        meshCollider = GetComponent<MeshCollider>();
        meshRenderer = GetComponent<MeshRenderer>();

        mesh = NavMeshToMesh.GetUpdatedMeshFromNavMesh();
        meshFilter.mesh = mesh;
        meshCollider.sharedMesh = mesh;
        

        //string filepath = @"D:\Users\ryanjantzen\Documents\NavMeshVerticies.csv";

        //File.WriteAllText(filepath, "");

        //int decimalToRoundTo = 5;

        //foreach (var vertex in mesh.vertices)
        //{
        //    File.AppendAllText(filepath, RoundToDecimal(vertex.x, decimalToRoundTo) + "," + RoundToDecimal(vertex.y, decimalToRoundTo) + "," + RoundToDecimal(vertex.z, decimalToRoundTo) + "\n");

        //}

        //RoundToDecimal(4.5333333333f, 2);

        meshFilter.sharedMesh = mesh;
        meshCollider.sharedMesh = mesh;
    }

    private float RoundToDecimal(float f, int decimalPlaces)
    {
        float mulitplier = 1;
        for (int i = 0; i < decimalPlaces; i++)
        {
            mulitplier *= 10;
        }

        return Mathf.RoundToInt(f * mulitplier) / mulitplier;
    }
}
