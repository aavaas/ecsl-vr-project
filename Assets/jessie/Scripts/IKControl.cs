using UnityEngine;
using UnityEngine.Networking;

[RequireComponent(typeof(Animator))]

public class IKControl : NetworkBehaviour {

    protected Animator animator;

    public bool ikActive = true;
    public Transform leftHandObj = null;
    public Transform rightHandObj = null;
    public Transform headObj = null;

    public Transform localleftHandObj = null;
    public Transform localrightHandObj = null;
    public Transform localheadObj = null;

    public void Start() {
        animator = GetComponent<Animator>();
        headObj = this.gameObject.transform.GetChild(0);
        rightHandObj = this.gameObject.transform.GetChild(1);
        leftHandObj = this.gameObject.transform.GetChild(2);
    }

    public override void OnStartLocalPlayer() {               
        GameObject.Find("[CameraRig]").transform.position = this.transform.position;
        //this.gameObject.transform.SetParent(GameObject.Find("[CameraRig]").transform);
    }

    private void Update() {

        if (!isLocalPlayer) {
            return;
        }

        if (localleftHandObj == null) {
            localleftHandObj = GameObject.Find("Hand1").transform;
			print ("found hand");
        } else {
            leftHandObj.SetPositionAndRotation(localleftHandObj.transform.position, localleftHandObj.transform.rotation);
            leftHandObj.Translate(new Vector3(0, 0, -0.1f));
        }
        if (localrightHandObj == null) {          
            localrightHandObj = GameObject.Find("Hand2").transform;
        } else {
           rightHandObj.SetPositionAndRotation(localrightHandObj.transform.position, localrightHandObj.transform.rotation);
           rightHandObj.Translate(new Vector3(0, 0, -0.1f));
        }
        if (localheadObj == null) {
            localheadObj = GameObject.Find("VRCamera").transform;
        } else {
            headObj.SetPositionAndRotation(localheadObj.transform.position, localheadObj.transform.rotation);            
        }

        
        gameObject.transform.position = new Vector3(Camera.main.transform.position.x, Camera.main.transform.position.y-1.57f, Camera.main.transform.position.z);

    }

    private void LateUpdate() {

        Transform head = animator.GetBoneTransform(HumanBodyBones.Head);
        head.rotation = headObj.rotation;
    }



    //a callback for calculating IK
    void OnAnimatorIK() {
        if (animator) {

            //if the IK is active, set the position and rotation directly to the goal. 
            if (ikActive) {
                if (leftHandObj != null) {
                    animator.SetIKPositionWeight(AvatarIKGoal.LeftHand, 1);
                    animator.SetIKRotationWeight(AvatarIKGoal.LeftHand, 1);
                    animator.SetIKPosition(AvatarIKGoal.LeftHand, leftHandObj.position);
                    animator.SetIKRotation(AvatarIKGoal.LeftHand, leftHandObj.rotation);
                }

                // Set the right hand target position and rotation, if one has been assigned
                if (rightHandObj != null) {
                    animator.SetIKPositionWeight(AvatarIKGoal.RightHand, 1);
                    animator.SetIKRotationWeight(AvatarIKGoal.RightHand, 1);
                    animator.SetIKPosition(AvatarIKGoal.RightHand, rightHandObj.position);
                    animator.SetIKRotation(AvatarIKGoal.RightHand, rightHandObj.rotation);
                }
            }

            //if the IK is not active, set the position and rotation of the hand and head back to the original position
            else {
                animator.SetIKPositionWeight(AvatarIKGoal.LeftHand, 0);
                animator.SetIKRotationWeight(AvatarIKGoal.LeftHand, 0);
                animator.SetIKPositionWeight(AvatarIKGoal.RightHand, 0);
                animator.SetIKRotationWeight(AvatarIKGoal.RightHand, 0);
            }
        }
    }
}