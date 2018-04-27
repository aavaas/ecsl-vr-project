// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.16 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.16;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,rpth:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,ofsf:0,ofsu:0,f2p0:False;n:type:ShaderForge.SFN_Final,id:3643,x:32722,y:33049,varname:node_3643,prsc:2|diff-924-OUT,normal-2185-OUT;n:type:ShaderForge.SFN_Add,id:3201,x:30968,y:32750,varname:node_3201,prsc:2|A-6370-UVOUT,B-8042-OUT;n:type:ShaderForge.SFN_Lerp,id:8042,x:30688,y:32849,varname:node_8042,prsc:2|A-5402-OUT,B-4942-TSL,T-7334-OUT;n:type:ShaderForge.SFN_Slider,id:759,x:30196,y:33141,ptovrint:False,ptlb:Animation Speed Left,ptin:_AnimationSpeedLeft,varname:node_6506,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3,max:1;n:type:ShaderForge.SFN_Time,id:4942,x:30403,y:32882,varname:node_4942,prsc:2;n:type:ShaderForge.SFN_Vector1,id:5402,x:30403,y:32815,varname:node_5402,prsc:2,v1:0;n:type:ShaderForge.SFN_Panner,id:4150,x:30553,y:32375,varname:node_4150,prsc:2,spu:0,spv:0.1|UVIN-2077-UVOUT,DIST-2077-V;n:type:ShaderForge.SFN_Tex2d,id:7968,x:31304,y:32834,varname:node_7968,prsc:2,ntxv:0,isnm:False|UVIN-3201-OUT,TEX-2424-TEX;n:type:ShaderForge.SFN_Tex2d,id:2946,x:31775,y:31581,ptovrint:False,ptlb:Diffuse Map,ptin:_DiffuseMap,varname:node_2946,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:6946,x:31775,y:31352,ptovrint:False,ptlb:Diffuse Color,ptin:_DiffuseColor,varname:node_6946,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Multiply,id:8158,x:32059,y:31517,varname:node_8158,prsc:2|A-6946-RGB,B-2946-RGB;n:type:ShaderForge.SFN_Add,id:924,x:32514,y:32123,varname:node_924,prsc:2|A-8158-OUT,B-7214-OUT;n:type:ShaderForge.SFN_Blend,id:7214,x:32339,y:32406,varname:node_7214,prsc:2,blmd:7,clmp:True|SRC-8158-OUT,DST-1678-OUT;n:type:ShaderForge.SFN_Slider,id:9947,x:30248,y:33994,ptovrint:False,ptlb:Animation Speed Right,ptin:_AnimationSpeedRight,varname:_AnimationSpeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3,max:1;n:type:ShaderForge.SFN_Time,id:5930,x:30368,y:33778,varname:node_5930,prsc:2;n:type:ShaderForge.SFN_Vector1,id:1171,x:30368,y:33711,varname:node_1171,prsc:2,v1:0;n:type:ShaderForge.SFN_Panner,id:9017,x:30631,y:33363,varname:node_9017,prsc:2,spu:-0.1,spv:0|UVIN-1426-UVOUT,DIST-1426-U;n:type:ShaderForge.SFN_Add,id:3027,x:31107,y:33521,varname:node_3027,prsc:2|A-402-UVOUT,B-1074-OUT;n:type:ShaderForge.SFN_Lerp,id:1074,x:30784,y:33738,varname:node_1074,prsc:2|A-1171-OUT,B-5930-TSL,T-9947-OUT;n:type:ShaderForge.SFN_TexCoord,id:1426,x:30379,y:33352,varname:node_1426,prsc:2,uv:0;n:type:ShaderForge.SFN_TexCoord,id:2077,x:30273,y:32364,varname:node_2077,prsc:2,uv:0;n:type:ShaderForge.SFN_Tex2d,id:5280,x:31333,y:33305,varname:_Caustic_copy,prsc:2,ntxv:0,isnm:False|UVIN-3027-OUT,TEX-2424-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:2424,x:31057,y:33034,ptovrint:False,ptlb:Caustic Map,ptin:_CausticMap,varname:node_2424,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_RemapRange,id:8707,x:31771,y:32781,varname:node_8707,prsc:2,frmn:0,frmx:1,tomn:0,tomx:2|IN-7499-OUT;n:type:ShaderForge.SFN_Multiply,id:1678,x:32182,y:32948,varname:node_1678,prsc:2|A-8310-OUT,B-7267-OUT,C-8458-RGB;n:type:ShaderForge.SFN_Slider,id:7267,x:31755,y:32969,ptovrint:False,ptlb:Caustic transparency,ptin:_Caustictransparency,varname:node_7267,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3,max:1;n:type:ShaderForge.SFN_Lerp,id:2185,x:32285,y:34674,varname:node_2185,prsc:2|A-5056-OUT,B-9143-RGB,T-4021-OUT;n:type:ShaderForge.SFN_Tex2d,id:9143,x:32027,y:34657,ptovrint:False,ptlb:Normal Map,ptin:_NormalMap,varname:node_9143,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fc01734a4d22b9740813afbd7ab33859,ntxv:3,isnm:True;n:type:ShaderForge.SFN_Vector3,id:5056,x:32027,y:34528,varname:node_5056,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Slider,id:4021,x:31938,y:34863,ptovrint:False,ptlb:Normal Intensity,ptin:_NormalIntensity,varname:node_4021,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_ConstantLerp,id:7334,x:30553,y:33017,varname:node_7334,prsc:2,a:0,b:-1|IN-759-OUT;n:type:ShaderForge.SFN_Rotator,id:6370,x:30890,y:32381,varname:node_6370,prsc:2|UVIN-4150-UVOUT,ANG-3024-OUT;n:type:ShaderForge.SFN_Slider,id:3024,x:30496,y:32601,ptovrint:False,ptlb:Angle Left,ptin:_AngleLeft,varname:node_3024,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Slider,id:666,x:30524,y:33592,ptovrint:False,ptlb:Angle Right,ptin:_AngleRight,varname:_AngleLeft_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Rotator,id:402,x:30918,y:33372,varname:node_402,prsc:2|UVIN-9017-UVOUT,ANG-666-OUT;n:type:ShaderForge.SFN_Color,id:8458,x:31776,y:33066,ptovrint:False,ptlb:Caustic Color,ptin:_CausticColor,varname:node_8458,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_ToggleProperty,id:9,x:31771,y:32707,ptovrint:False,ptlb:Active Caustic,ptin:_ActiveCaustic,varname:node_9,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True;n:type:ShaderForge.SFN_Multiply,id:8310,x:31944,y:32722,varname:node_8310,prsc:2|A-9-OUT,B-8707-OUT;n:type:ShaderForge.SFN_Blend,id:7499,x:31537,y:32981,varname:node_7499,prsc:2,blmd:0,clmp:True|SRC-7968-RGB,DST-5280-RGB;proporder:6946-2946-9143-4021-9-8458-7267-2424-759-3024-9947-666;pass:END;sub:END;*/

Shader "Ciconia Studio/Effects/Water/Caustic Diffuse Bump" {
    Properties {
        _DiffuseColor ("Diffuse Color", Color) = (1,1,1,1)
        _DiffuseMap ("Diffuse Map", 2D) = "white" {}
        _NormalMap ("Normal Map", 2D) = "bump" {}
        _NormalIntensity ("Normal Intensity", Range(0, 1)) = 1
        [MaterialToggle] _ActiveCaustic ("Active Caustic", Float ) = 1
        _CausticColor ("Caustic Color", Color) = (1,1,1,1)
        _Caustictransparency ("Caustic transparency", Range(0, 1)) = 0.3
        _CausticMap ("Caustic Map", 2D) = "white" {}
        _AnimationSpeedLeft ("Animation Speed Left", Range(0, 1)) = 0.3
        _AngleLeft ("Angle Left", Range(0, 1)) = 0
        _AnimationSpeedRight ("Animation Speed Right", Range(0, 1)) = 0.3
        _AngleRight ("Angle Right", Range(0, 1)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float _AnimationSpeedLeft;
            uniform sampler2D _DiffuseMap; uniform float4 _DiffuseMap_ST;
            uniform float4 _DiffuseColor;
            uniform float _AnimationSpeedRight;
            uniform sampler2D _CausticMap; uniform float4 _CausticMap_ST;
            uniform float _Caustictransparency;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalIntensity;
            uniform float _AngleLeft;
            uniform float _AngleRight;
            uniform float4 _CausticColor;
            uniform fixed _ActiveCaustic;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
                UNITY_FOG_COORDS(7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = lerp(float3(0,0,1),_NormalMap_var.rgb,_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb; // Ambient Light
                float4 _DiffuseMap_var = tex2D(_DiffuseMap,TRANSFORM_TEX(i.uv0, _DiffuseMap));
                float3 node_8158 = (_DiffuseColor.rgb*_DiffuseMap_var.rgb);
                float node_6370_ang = _AngleLeft;
                float node_6370_spd = 1.0;
                float node_6370_cos = cos(node_6370_spd*node_6370_ang);
                float node_6370_sin = sin(node_6370_spd*node_6370_ang);
                float2 node_6370_piv = float2(0.5,0.5);
                float2 node_6370 = (mul((i.uv0+i.uv0.g*float2(0,0.1))-node_6370_piv,float2x2( node_6370_cos, -node_6370_sin, node_6370_sin, node_6370_cos))+node_6370_piv);
                float4 node_4942 = _Time + _TimeEditor;
                float2 node_3201 = (node_6370+lerp(0.0,node_4942.r,lerp(0,-1,_AnimationSpeedLeft)));
                float4 node_7968 = tex2D(_CausticMap,TRANSFORM_TEX(node_3201, _CausticMap));
                float node_402_ang = _AngleRight;
                float node_402_spd = 1.0;
                float node_402_cos = cos(node_402_spd*node_402_ang);
                float node_402_sin = sin(node_402_spd*node_402_ang);
                float2 node_402_piv = float2(0.5,0.5);
                float2 node_402 = (mul((i.uv0+i.uv0.r*float2(-0.1,0))-node_402_piv,float2x2( node_402_cos, -node_402_sin, node_402_sin, node_402_cos))+node_402_piv);
                float4 node_5930 = _Time + _TimeEditor;
                float2 node_3027 = (node_402+lerp(0.0,node_5930.r,_AnimationSpeedRight));
                float4 _Caustic_copy = tex2D(_CausticMap,TRANSFORM_TEX(node_3027, _CausticMap));
                float3 diffuseColor = (node_8158+saturate((((_ActiveCaustic*(saturate(min(node_7968.rgb,_Caustic_copy.rgb))*2.0+0.0))*_Caustictransparency*_CausticColor.rgb)/(1.0-node_8158))));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 xboxone ps3 ps4 psp2 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform float4 _TimeEditor;
            uniform float _AnimationSpeedLeft;
            uniform sampler2D _DiffuseMap; uniform float4 _DiffuseMap_ST;
            uniform float4 _DiffuseColor;
            uniform float _AnimationSpeedRight;
            uniform sampler2D _CausticMap; uniform float4 _CausticMap_ST;
            uniform float _Caustictransparency;
            uniform sampler2D _NormalMap; uniform float4 _NormalMap_ST;
            uniform float _NormalIntensity;
            uniform float _AngleLeft;
            uniform float _AngleRight;
            uniform float4 _CausticColor;
            uniform fixed _ActiveCaustic;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                LIGHTING_COORDS(5,6)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMap_var = UnpackNormal(tex2D(_NormalMap,TRANSFORM_TEX(i.uv0, _NormalMap)));
                float3 normalLocal = lerp(float3(0,0,1),_NormalMap_var.rgb,_NormalIntensity);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
/////// Diffuse:
                float NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float4 _DiffuseMap_var = tex2D(_DiffuseMap,TRANSFORM_TEX(i.uv0, _DiffuseMap));
                float3 node_8158 = (_DiffuseColor.rgb*_DiffuseMap_var.rgb);
                float node_6370_ang = _AngleLeft;
                float node_6370_spd = 1.0;
                float node_6370_cos = cos(node_6370_spd*node_6370_ang);
                float node_6370_sin = sin(node_6370_spd*node_6370_ang);
                float2 node_6370_piv = float2(0.5,0.5);
                float2 node_6370 = (mul((i.uv0+i.uv0.g*float2(0,0.1))-node_6370_piv,float2x2( node_6370_cos, -node_6370_sin, node_6370_sin, node_6370_cos))+node_6370_piv);
                float4 node_4942 = _Time + _TimeEditor;
                float2 node_3201 = (node_6370+lerp(0.0,node_4942.r,lerp(0,-1,_AnimationSpeedLeft)));
                float4 node_7968 = tex2D(_CausticMap,TRANSFORM_TEX(node_3201, _CausticMap));
                float node_402_ang = _AngleRight;
                float node_402_spd = 1.0;
                float node_402_cos = cos(node_402_spd*node_402_ang);
                float node_402_sin = sin(node_402_spd*node_402_ang);
                float2 node_402_piv = float2(0.5,0.5);
                float2 node_402 = (mul((i.uv0+i.uv0.r*float2(-0.1,0))-node_402_piv,float2x2( node_402_cos, -node_402_sin, node_402_sin, node_402_cos))+node_402_piv);
                float4 node_5930 = _Time + _TimeEditor;
                float2 node_3027 = (node_402+lerp(0.0,node_5930.r,_AnimationSpeedRight));
                float4 _Caustic_copy = tex2D(_CausticMap,TRANSFORM_TEX(node_3027, _CausticMap));
                float3 diffuseColor = (node_8158+saturate((((_ActiveCaustic*(saturate(min(node_7968.rgb,_Caustic_copy.rgb))*2.0+0.0))*_Caustictransparency*_CausticColor.rgb)/(1.0-node_8158))));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
