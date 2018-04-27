using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;

public class NavMeshToMesh
{
    /// <summary>The mesh made from the NavMesh</summary>
    private static Mesh mesh;

    /// <summary>
    ///     Get the mesh from the current nav mesh. Use this after baking a nav mesh
    /// </summary>
    /// <returns>The mesh from the current nav mesh</returns>
    public static Mesh GetUpdatedMeshFromNavMesh()
    {
        // Get the current mesh information 
        NavMeshTriangulation navMeshTriangluation = NavMesh.CalculateTriangulation();
        int[] triangles = navMeshTriangluation.indices;
        Vector3[] vertices = navMeshTriangluation.vertices;


        Debug.Log("Number of triangles: " + triangles.Length);
        Debug.Log("Number of verticies: " + vertices.Length);

        // Create a new mesh
        mesh = new Mesh();

        AutoWeld(vertices, triangles, 0.01f);

        // Set the mesh properties
        mesh.name = "NavMesh Mesh";

        Debug.Log("Number of mesh triangles: " + mesh.triangles.Length);
        Debug.Log("Number of mesh verticies: " + mesh.vertices.Length);

        return mesh;
    }

    /// <summary>
    ///     Get the most recent mesh that was calculated from the last time GetUpdatedMeshFromNavMesh was called. If mesh is null, it will run GetUpdatedMeshFromNavMesh.
    /// </summary>
    /// <returns>The saved mesh</returns>
    public static Mesh GetLastCalculatedMesh()
    {
        if (mesh == null)
        {
            return GetUpdatedMeshFromNavMesh();
        }

        return mesh;
    }

    // From https://answers.unity.com/questions/228841/dynamically-combine-verticies-that-share-the-same.html
    private static void AutoWeld(Vector3[] verts, int[] tris, float threshold)
    {

        // Build new vertex buffer and remove "duplicate" verticies
        // that are within the given threshold.
        List<Vector3> newVerts = new List<Vector3>();

        int k = 0;

        foreach (Vector3 vert in verts)
        {
            // Has vertex already been added to newVerts list?
            foreach (Vector3 newVert in newVerts)
                if (Vector3.Distance(newVert, vert) <= threshold)
                    goto skipToNext;

            // Accept new vertex!
            newVerts.Add(vert);

            skipToNext:;
            ++k;
        }

        // Rebuild triangles using new verticies
        for (int i = 0; i < tris.Length; ++i)
        {
            // Find new vertex point from buffer
            for (int j = 0; j < newVerts.Count; ++j)
            {
                if (Vector3.Distance(newVerts[j], verts[tris[i]]) <= threshold)
                {
                    tris[i] = j;
                    break;
                }
            }
        }

        // Update mesh!
        mesh.Clear();
        mesh.vertices = newVerts.ToArray();
        mesh.triangles = tris;
        mesh.RecalculateBounds();
        mesh.RecalculateNormals();
    }
}
