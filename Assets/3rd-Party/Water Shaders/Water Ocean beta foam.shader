// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'
// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.26 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.26;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:True,rprd:True,enco:False,rmgx:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:False,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3643,x:32722,y:33049,varname:node_3643,prsc:2|diff-850-OUT,spec-5504-OUT,gloss-9967-OUT,normal-8350-OUT,alpha-5098-OUT,refract-5960-OUT;n:type:ShaderForge.SFN_Color,id:4427,x:31373,y:32152,ptovrint:False,ptlb:Specular Color,ptin:_SpecularColor,varname:_SpecularColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:1,c3:1,c4:1;n:type:ShaderForge.SFN_Slider,id:3527,x:31834,y:33497,ptovrint:False,ptlb:Glossiness,ptin:_Glossiness,varname:_Glossiness,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-2,cur:2,max:2;n:type:ShaderForge.SFN_Tex2d,id:4104,x:30725,y:35172,ptovrint:False,ptlb:_Normal Wave 1 (Vertical),ptin:__NormalWave1Vertical,varname:__NormalWave1Vertical,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-7363-OUT;n:type:ShaderForge.SFN_TexCoord,id:8742,x:29397,y:36527,varname:node_8742,prsc:2,uv:0;n:type:ShaderForge.SFN_Vector1,id:8024,x:29397,y:36705,varname:node_8024,prsc:2,v1:1;n:type:ShaderForge.SFN_Time,id:8036,x:29224,y:36950,varname:node_8036,prsc:2;n:type:ShaderForge.SFN_Slider,id:9029,x:29309,y:37289,ptovrint:False,ptlb:Animation Speed 2,ptin:_AnimationSpeed2,varname:_AnimationSpeed2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05,max:1;n:type:ShaderForge.SFN_Lerp,id:8433,x:29759,y:36914,varname:node_8433,prsc:2|A-4652-OUT,B-4095-OUT,T-9029-OUT;n:type:ShaderForge.SFN_Tex2d,id:1621,x:31034,y:35696,ptovrint:False,ptlb:_Normal Wave 2 (Horizontal),ptin:__NormalWave2Horizontal,varname:__NormalWave2Horizontal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-1106-OUT;n:type:ShaderForge.SFN_Add,id:8350,x:31768,y:34843,varname:node_8350,prsc:2|A-2920-OUT,B-2487-OUT;n:type:ShaderForge.SFN_Multiply,id:2597,x:29669,y:36556,varname:node_2597,prsc:2|A-8742-UVOUT,B-8024-OUT;n:type:ShaderForge.SFN_Add,id:1106,x:30350,y:36690,varname:node_1106,prsc:2|A-897-UVOUT,B-5571-UVOUT;n:type:ShaderForge.SFN_Vector1,id:4652,x:29425,y:36950,varname:node_4652,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:4095,x:29425,y:37052,varname:node_4095,prsc:2|A-8036-TSL,B-2545-OUT;n:type:ShaderForge.SFN_Vector1,id:2545,x:29224,y:37143,varname:node_2545,prsc:2,v1:-5;n:type:ShaderForge.SFN_Lerp,id:8431,x:29525,y:35659,varname:node_8431,prsc:2|A-6342-OUT,B-4931-OUT,T-9575-OUT;n:type:ShaderForge.SFN_Slider,id:9575,x:29124,y:36225,ptovrint:False,ptlb:Animation Speed 1,ptin:_AnimationSpeed1,varname:_AnimationSpeed1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.05,max:1;n:type:ShaderForge.SFN_Multiply,id:4931,x:29240,y:35988,varname:node_4931,prsc:2|A-1438-TSL,B-5403-OUT;n:type:ShaderForge.SFN_Vector1,id:5403,x:29039,y:36079,varname:node_5403,prsc:2,v1:5;n:type:ShaderForge.SFN_Time,id:1438,x:29039,y:35886,varname:node_1438,prsc:2;n:type:ShaderForge.SFN_Vector1,id:6342,x:29240,y:35806,varname:node_6342,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9746,x:29212,y:35641,varname:node_9746,prsc:2,v1:1;n:type:ShaderForge.SFN_TexCoord,id:2268,x:29202,y:35442,varname:node_2268,prsc:2,uv:0;n:type:ShaderForge.SFN_Multiply,id:9030,x:29684,y:35413,varname:node_9030,prsc:2|A-2268-UVOUT,B-9746-OUT;n:type:ShaderForge.SFN_Add,id:7363,x:30287,y:35491,varname:node_7363,prsc:2|A-7371-UVOUT,B-5203-UVOUT;n:type:ShaderForge.SFN_Slider,id:4581,x:29632,y:36061,ptovrint:False,ptlb:Angle 1,ptin:_Angle1,varname:_Angle1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_TexCoord,id:4772,x:29944,y:37036,varname:node_4772,prsc:2,uv:0;n:type:ShaderForge.SFN_Rotator,id:5203,x:30011,y:35818,varname:node_5203,prsc:2|UVIN-2374-UVOUT,ANG-4581-OUT;n:type:ShaderForge.SFN_TexCoord,id:2374,x:29665,y:35820,varname:node_2374,prsc:2,uv:0;n:type:ShaderForge.SFN_Rotator,id:5571,x:30271,y:36980,varname:node_5571,prsc:2|UVIN-4772-UVOUT,ANG-172-OUT;n:type:ShaderForge.SFN_Slider,id:172,x:29790,y:37390,ptovrint:False,ptlb:Angle 2,ptin:_Angle2,varname:_Angle2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-1,cur:0,max:1;n:type:ShaderForge.SFN_Panner,id:7371,x:30019,y:35474,varname:node_7371,prsc:2,spu:0,spv:0.6|UVIN-9030-OUT,DIST-8431-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:2111,x:30119,y:37235,varname:node_2111,prsc:2,a:-1,b:1|IN-172-OUT;n:type:ShaderForge.SFN_Panner,id:897,x:29852,y:36680,varname:node_897,prsc:2,spu:0.6,spv:0|UVIN-2597-OUT,DIST-8433-OUT;n:type:ShaderForge.SFN_Slider,id:3550,x:30916,y:35960,ptovrint:False,ptlb:Intensity Wave 2,ptin:_IntensityWave2,varname:_IntensityWave2,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Vector3,id:4455,x:31034,y:35594,varname:node_4455,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Lerp,id:2487,x:31430,y:35367,varname:node_2487,prsc:2|A-4455-OUT,B-1621-RGB,T-3635-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:3635,x:31241,y:35886,varname:node_3635,prsc:2,a:0,b:2|IN-3550-OUT;n:type:ShaderForge.SFN_Vector3,id:5787,x:30725,y:35054,varname:node_5787,prsc:2,v1:0,v2:0,v3:1;n:type:ShaderForge.SFN_Lerp,id:2920,x:31360,y:35003,varname:node_2920,prsc:2|A-5787-OUT,B-4104-RGB,T-3037-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:3037,x:31018,y:35286,varname:node_3037,prsc:2,a:0,b:-2|IN-9475-OUT;n:type:ShaderForge.SFN_Slider,id:9475,x:30697,y:35414,ptovrint:False,ptlb:Intensity Wave 1,ptin:_IntensityWave1,varname:_IntensityWave1,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Slider,id:7552,x:30012,y:32153,ptovrint:False,ptlb:Reflection Edges,ptin:_ReflectionEdges,varname:_ReflectionEdges,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2759993,max:1;n:type:ShaderForge.SFN_Vector1,id:1511,x:30169,y:31953,varname:node_1511,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:8105,x:30169,y:31849,varname:node_8105,prsc:2,v1:10;n:type:ShaderForge.SFN_Slider,id:8352,x:29768,y:31602,ptovrint:False,ptlb:Reflection Intensity,ptin:_ReflectionIntensity,varname:_ReflectionIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:1;n:type:ShaderForge.SFN_Vector1,id:4781,x:29875,y:31467,varname:node_4781,prsc:2,v1:2;n:type:ShaderForge.SFN_Vector1,id:5394,x:29875,y:31397,varname:node_5394,prsc:2,v1:0;n:type:ShaderForge.SFN_Lerp,id:3865,x:30151,y:31439,varname:node_3865,prsc:2|A-5394-OUT,B-4781-OUT,T-8352-OUT;n:type:ShaderForge.SFN_Cubemap,id:8872,x:29927,y:31146,ptovrint:False,ptlb:_Cube map ,ptin:__Cubemap,varname:__Cubemap,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,pvfc:1|MIP-7881-OUT;n:type:ShaderForge.SFN_ConstantLerp,id:7881,x:29685,y:31146,varname:node_7881,prsc:2,a:0,b:6|IN-9147-OUT;n:type:ShaderForge.SFN_Slider,id:9147,x:29297,y:31205,ptovrint:False,ptlb:Blur Reflection,ptin:_BlurReflection,varname:_BlurReflection,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:4138,x:30531,y:31433,varname:node_4138,prsc:2|A-8872-RGB,B-3865-OUT;n:type:ShaderForge.SFN_Fresnel,id:3639,x:30567,y:31837,varname:node_3639,prsc:2|EXP-6416-OUT;n:type:ShaderForge.SFN_Multiply,id:7167,x:31017,y:31847,varname:node_7167,prsc:2|A-3639-OUT,B-3639-OUT;n:type:ShaderForge.SFN_Add,id:5886,x:31411,y:31811,varname:node_5886,prsc:2|A-4138-OUT,B-7167-OUT;n:type:ShaderForge.SFN_Color,id:4260,x:31823,y:31650,ptovrint:False,ptlb:_Water Color,ptin:__WaterColor,varname:__WaterColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.1058824,c2:0.3019608,c3:0.3960785,c4:1;n:type:ShaderForge.SFN_Lerp,id:6416,x:30401,y:31981,varname:node_6416,prsc:2|A-8105-OUT,B-1511-OUT,T-7552-OUT;n:type:ShaderForge.SFN_ComponentMask,id:7271,x:31915,y:35049,varname:node_7271,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8350-OUT;n:type:ShaderForge.SFN_Multiply,id:5960,x:32138,y:35075,varname:node_5960,prsc:2|A-7271-OUT,B-6264-OUT;n:type:ShaderForge.SFN_Slider,id:5798,x:31715,y:35588,ptovrint:False,ptlb:_Refraction,ptin:__Refraction,varname:__Refraction,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1,max:1;n:type:ShaderForge.SFN_ConstantLerp,id:6264,x:32048,y:35356,varname:node_6264,prsc:2,a:0,b:0.25|IN-5798-OUT;n:type:ShaderForge.SFN_Multiply,id:5504,x:31637,y:32231,varname:node_5504,prsc:2|A-4427-RGB,B-8548-OUT;n:type:ShaderForge.SFN_Slider,id:2695,x:31172,y:32430,ptovrint:False,ptlb:Specular Intensity,ptin:_SpecularIntensity,varname:_SpecularIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_ConstantLerp,id:8548,x:31513,y:32375,varname:node_8548,prsc:2,a:0,b:2|IN-2695-OUT;n:type:ShaderForge.SFN_Slider,id:4092,x:30514,y:33184,ptovrint:False,ptlb:Transparency,ptin:_Transparency,varname:_Transparency,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.3,max:1;n:type:ShaderForge.SFN_Lerp,id:5098,x:31056,y:33396,varname:node_5098,prsc:2|A-5983-OUT,B-3319-OUT,T-4092-OUT;n:type:ShaderForge.SFN_Vector1,id:3319,x:30743,y:32889,varname:node_3319,prsc:2,v1:1;n:type:ShaderForge.SFN_ConstantLerp,id:5983,x:30809,y:32704,varname:node_5983,prsc:2,a:0,b:1|IN-6657-OUT;n:type:ShaderForge.SFN_RemapRange,id:6657,x:30779,y:32433,varname:node_6657,prsc:2,frmn:0,frmx:1,tomn:0,tomx:1|IN-3639-OUT;n:type:ShaderForge.SFN_Fresnel,id:760,x:30335,y:32616,varname:node_760,prsc:2;n:type:ShaderForge.SFN_Blend,id:4262,x:31411,y:33236,varname:node_4262,prsc:2,blmd:1,clmp:False|SRC-4104-B,DST-1621-B;n:type:ShaderForge.SFN_RemapRange,id:1299,x:31628,y:33080,varname:node_1299,prsc:2,frmn:0,frmx:1,tomn:-10,tomx:0.4|IN-4262-OUT;n:type:ShaderForge.SFN_Lerp,id:3021,x:31886,y:33072,varname:node_3021,prsc:2|A-1522-OUT,B-1299-OUT,T-6080-OUT;n:type:ShaderForge.SFN_RemapRange,id:1522,x:31628,y:32927,varname:node_1522,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4262-OUT;n:type:ShaderForge.SFN_Slider,id:6080,x:31411,y:33431,ptovrint:False,ptlb:_Foam Spread,ptin:__FoamSpread,varname:__FoamSpread,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_NormalBlend,id:3129,x:31924,y:33587,varname:node_3129,prsc:2|BSE-4104-RGB,DTL-1621-RGB;n:type:ShaderForge.SFN_OneMinus,id:3458,x:32205,y:32403,varname:node_3458,prsc:2|IN-3021-OUT;n:type:ShaderForge.SFN_Subtract,id:7058,x:32205,y:32267,varname:node_7058,prsc:2|A-7652-OUT,B-3021-OUT;n:type:ShaderForge.SFN_Blend,id:6408,x:32409,y:32225,varname:node_6408,prsc:2,blmd:1,clmp:True|SRC-7058-OUT,DST-3458-OUT;n:type:ShaderForge.SFN_Add,id:9967,x:32244,y:33382,varname:node_9967,prsc:2|A-7637-OUT,B-3527-OUT;n:type:ShaderForge.SFN_RemapRange,id:7637,x:31814,y:33301,varname:node_7637,prsc:2,frmn:0,frmx:1,tomn:-5,tomx:0.1|IN-4262-OUT;n:type:ShaderForge.SFN_Add,id:850,x:32786,y:32021,varname:node_850,prsc:2|A-7652-OUT,B-6408-OUT;n:type:ShaderForge.SFN_Add,id:7652,x:31983,y:31875,varname:node_7652,prsc:2|A-4260-RGB,B-5886-OUT;proporder:4260-4427-2695-3527-6080-4104-9475-9575-4581-1621-3550-9029-172-5798-8872-7552-8352-9147-4092;pass:END;sub:END;*/

Shader "Ciconia Studio/Effects/Water/Ocean Beta foam" {
    Properties {
        __WaterColor ("_Water Color", Color) = (0.1058824,0.3019608,0.3960785,1)
        _SpecularColor ("Specular Color", Color) = (1,1,1,1)
        _SpecularIntensity ("Specular Intensity", Range(0, 1)) = 1
        _Glossiness ("Glossiness", Range(-2, 2)) = 2
        __FoamSpread ("_Foam Spread", Range(0, 1)) = 0
        __NormalWave1Vertical ("_Normal Wave 1 (Vertical)", 2D) = "bump" {}
        _IntensityWave1 ("Intensity Wave 1", Range(0, 1)) = 0.5
        _AnimationSpeed1 ("Animation Speed 1", Range(0, 1)) = 0.05
        _Angle1 ("Angle 1", Range(-1, 1)) = 0
        __NormalWave2Horizontal ("_Normal Wave 2 (Horizontal)", 2D) = "bump" {}
        _IntensityWave2 ("Intensity Wave 2", Range(0, 1)) = 0.5
        _AnimationSpeed2 ("Animation Speed 2", Range(0, 1)) = 0.05
        _Angle2 ("Angle 2", Range(-1, 1)) = 0
        __Refraction ("_Refraction", Range(0, 1)) = 0.1
        __Cubemap ("_Cube map ", Cube) = "_Skybox" {}
        _ReflectionEdges ("Reflection Edges", Range(0, 1)) = 0.2759993
        _ReflectionIntensity ("Reflection Intensity", Range(0, 1)) = 0.2
        _BlurReflection ("Blur Reflection", Range(0, 1)) = 0
        _Transparency ("Transparency", Range(0, 1)) = 0.3
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform float4 _SpecularColor;
            uniform float _Glossiness;
            uniform sampler2D __NormalWave1Vertical; uniform float4 __NormalWave1Vertical_ST;
            uniform float _AnimationSpeed2;
            uniform sampler2D __NormalWave2Horizontal; uniform float4 __NormalWave2Horizontal_ST;
            uniform float _AnimationSpeed1;
            uniform float _Angle1;
            uniform float _Angle2;
            uniform float _IntensityWave2;
            uniform float _IntensityWave1;
            uniform float _ReflectionEdges;
            uniform float _ReflectionIntensity;
            uniform samplerCUBE __Cubemap;
            uniform float _BlurReflection;
            uniform float4 __WaterColor;
            uniform float __Refraction;
            uniform float _SpecularIntensity;
            uniform float _Transparency;
            uniform float __FoamSpread;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 screenPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
                #if defined(LIGHTMAP_ON) || defined(UNITY_SHOULD_SAMPLE_SH)
                    float4 ambientOrLightmapUV : TEXCOORD11;
                #endif
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                #ifdef LIGHTMAP_ON
                    o.ambientOrLightmapUV.xy = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
                    o.ambientOrLightmapUV.zw = 0;
                #endif
                #ifdef DYNAMICLIGHTMAP_ON
                    o.ambientOrLightmapUV.zw = v.texcoord2.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
                #endif
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_1438 = _Time + _TimeEditor;
                float node_5203_ang = _Angle1;
                float node_5203_spd = 1.0;
                float node_5203_cos = cos(node_5203_spd*node_5203_ang);
                float node_5203_sin = sin(node_5203_spd*node_5203_ang);
                float2 node_5203_piv = float2(0.5,0.5);
                float2 node_5203 = (mul(i.uv0-node_5203_piv,float2x2( node_5203_cos, -node_5203_sin, node_5203_sin, node_5203_cos))+node_5203_piv);
                float2 node_7363 = (((i.uv0*1.0)+lerp(0.0,(node_1438.r*5.0),_AnimationSpeed1)*float2(0,0.6))+node_5203);
                float3 __NormalWave1Vertical_var = UnpackNormal(tex2D(__NormalWave1Vertical,TRANSFORM_TEX(node_7363, __NormalWave1Vertical)));
                float4 node_8036 = _Time + _TimeEditor;
                float node_5571_ang = _Angle2;
                float node_5571_spd = 1.0;
                float node_5571_cos = cos(node_5571_spd*node_5571_ang);
                float node_5571_sin = sin(node_5571_spd*node_5571_ang);
                float2 node_5571_piv = float2(0.5,0.5);
                float2 node_5571 = (mul(i.uv0-node_5571_piv,float2x2( node_5571_cos, -node_5571_sin, node_5571_sin, node_5571_cos))+node_5571_piv);
                float2 node_1106 = (((i.uv0*1.0)+lerp(0.0,(node_8036.r*(-5.0)),_AnimationSpeed2)*float2(0.6,0))+node_5571);
                float3 __NormalWave2Horizontal_var = UnpackNormal(tex2D(__NormalWave2Horizontal,TRANSFORM_TEX(node_1106, __NormalWave2Horizontal)));
                float3 node_8350 = (lerp(float3(0,0,1),__NormalWave1Vertical_var.rgb,lerp(0,-2,_IntensityWave1))+lerp(float3(0,0,1),__NormalWave2Horizontal_var.rgb,lerp(0,2,_IntensityWave2)));
                float3 normalLocal = node_8350;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (node_8350.rg*lerp(0,0.25,__Refraction));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float node_4262 = (__NormalWave1Vertical_var.b*__NormalWave2Horizontal_var.b);
                float gloss = ((node_4262*5.1+-5.0)+_Glossiness);
                float specPow = exp2( gloss * 10.0+1.0);
/////// GI Data:
                UnityLight light;
                #ifdef LIGHTMAP_OFF
                    light.color = lightColor;
                    light.dir = lightDirection;
                    light.ndotl = LambertTerm (normalDirection, light.dir);
                #else
                    light.color = half3(0.f, 0.f, 0.f);
                    light.ndotl = 0.0f;
                    light.dir = half3(0.f, 0.f, 0.f);
                #endif
                UnityGIInput d;
                d.light = light;
                d.worldPos = i.posWorld.xyz;
                d.worldViewDir = viewDirection;
                d.atten = attenuation;
                #if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON)
                    d.ambient = 0;
                    d.lightmapUV = i.ambientOrLightmapUV;
                #else
                    d.ambient = i.ambientOrLightmapUV;
                #endif
                d.boxMax[0] = unity_SpecCube0_BoxMax;
                d.boxMin[0] = unity_SpecCube0_BoxMin;
                d.probePosition[0] = unity_SpecCube0_ProbePosition;
                d.probeHDR[0] = unity_SpecCube0_HDR;
                d.boxMax[1] = unity_SpecCube1_BoxMax;
                d.boxMin[1] = unity_SpecCube1_BoxMin;
                d.probePosition[1] = unity_SpecCube1_ProbePosition;
                d.probeHDR[1] = unity_SpecCube1_HDR;
                Unity_GlossyEnvironmentData ugls_en_data;
                ugls_en_data.roughness = 1.0 - gloss;
                ugls_en_data.reflUVW = viewReflectDirection;
                UnityGI gi = UnityGlobalIllumination(d, 1, normalDirection, ugls_en_data );
                lightDirection = gi.light.dir;
                lightColor = gi.light.color;
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = (_SpecularColor.rgb*lerp(0,2,_SpecularIntensity));
                float3 directSpecular = 1 * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 indirectSpecular = (gi.indirect.specular)*specularColor;
                float3 specular = (directSpecular + indirectSpecular);
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float3 indirectDiffuse = float3(0,0,0);
                indirectDiffuse += gi.indirect.diffuse;
                float node_3639 = pow(1.0-max(0,dot(normalDirection, viewDirection)),lerp(10.0,0.0,_ReflectionEdges));
                float3 node_7652 = (__WaterColor.rgb+((texCUBElod(__Cubemap,float4(viewReflectDirection,lerp(0,6,_BlurReflection))).rgb*lerp(0.0,2.0,_ReflectionIntensity))+(node_3639*node_3639)));
                float node_3021 = lerp((node_4262*2.0+-1.0),(node_4262*10.4+-10.0),__FoamSpread);
                float3 diffuseColor = (node_7652+saturate(((node_7652-node_3021)*(1.0 - node_3021))));
                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(lerp(sceneColor.rgb, finalColor,lerp(lerp(0,1,(node_3639*1.0+0.0)),1.0,_Transparency)),1);
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
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdadd_fullshadows
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            #pragma glsl
            uniform sampler2D _GrabTexture;
            uniform float4 _TimeEditor;
            uniform float4 _SpecularColor;
            uniform float _Glossiness;
            uniform sampler2D __NormalWave1Vertical; uniform float4 __NormalWave1Vertical_ST;
            uniform float _AnimationSpeed2;
            uniform sampler2D __NormalWave2Horizontal; uniform float4 __NormalWave2Horizontal_ST;
            uniform float _AnimationSpeed1;
            uniform float _Angle1;
            uniform float _Angle2;
            uniform float _IntensityWave2;
            uniform float _IntensityWave1;
            uniform float _ReflectionEdges;
            uniform float _ReflectionIntensity;
            uniform samplerCUBE __Cubemap;
            uniform float _BlurReflection;
            uniform float4 __WaterColor;
            uniform float __Refraction;
            uniform float _SpecularIntensity;
            uniform float _Transparency;
            uniform float __FoamSpread;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
                float3 tangentDir : TEXCOORD5;
                float3 bitangentDir : TEXCOORD6;
                float4 screenPos : TEXCOORD7;
                LIGHTING_COORDS(8,9)
                UNITY_FOG_COORDS(10)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos(v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                o.screenPos = o.pos;
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float4 node_1438 = _Time + _TimeEditor;
                float node_5203_ang = _Angle1;
                float node_5203_spd = 1.0;
                float node_5203_cos = cos(node_5203_spd*node_5203_ang);
                float node_5203_sin = sin(node_5203_spd*node_5203_ang);
                float2 node_5203_piv = float2(0.5,0.5);
                float2 node_5203 = (mul(i.uv0-node_5203_piv,float2x2( node_5203_cos, -node_5203_sin, node_5203_sin, node_5203_cos))+node_5203_piv);
                float2 node_7363 = (((i.uv0*1.0)+lerp(0.0,(node_1438.r*5.0),_AnimationSpeed1)*float2(0,0.6))+node_5203);
                float3 __NormalWave1Vertical_var = UnpackNormal(tex2D(__NormalWave1Vertical,TRANSFORM_TEX(node_7363, __NormalWave1Vertical)));
                float4 node_8036 = _Time + _TimeEditor;
                float node_5571_ang = _Angle2;
                float node_5571_spd = 1.0;
                float node_5571_cos = cos(node_5571_spd*node_5571_ang);
                float node_5571_sin = sin(node_5571_spd*node_5571_ang);
                float2 node_5571_piv = float2(0.5,0.5);
                float2 node_5571 = (mul(i.uv0-node_5571_piv,float2x2( node_5571_cos, -node_5571_sin, node_5571_sin, node_5571_cos))+node_5571_piv);
                float2 node_1106 = (((i.uv0*1.0)+lerp(0.0,(node_8036.r*(-5.0)),_AnimationSpeed2)*float2(0.6,0))+node_5571);
                float3 __NormalWave2Horizontal_var = UnpackNormal(tex2D(__NormalWave2Horizontal,TRANSFORM_TEX(node_1106, __NormalWave2Horizontal)));
                float3 node_8350 = (lerp(float3(0,0,1),__NormalWave1Vertical_var.rgb,lerp(0,-2,_IntensityWave1))+lerp(float3(0,0,1),__NormalWave2Horizontal_var.rgb,lerp(0,2,_IntensityWave2)));
                float3 normalLocal = node_8350;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + (node_8350.rg*lerp(0,0.25,__Refraction));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float node_4262 = (__NormalWave1Vertical_var.b*__NormalWave2Horizontal_var.b);
                float gloss = ((node_4262*5.1+-5.0)+_Glossiness);
                float specPow = exp2( gloss * 10.0+1.0);
////// Specular:
                float NdotL = max(0, dot( normalDirection, lightDirection ));
                float3 specularColor = (_SpecularColor.rgb*lerp(0,2,_SpecularIntensity));
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/////// Diffuse:
                NdotL = max(0.0,dot( normalDirection, lightDirection ));
                float3 directDiffuse = max( 0.0, NdotL) * attenColor;
                float node_3639 = pow(1.0-max(0,dot(normalDirection, viewDirection)),lerp(10.0,0.0,_ReflectionEdges));
                float3 node_7652 = (__WaterColor.rgb+((texCUBElod(__Cubemap,float4(viewReflectDirection,lerp(0,6,_BlurReflection))).rgb*lerp(0.0,2.0,_ReflectionIntensity))+(node_3639*node_3639)));
                float node_3021 = lerp((node_4262*2.0+-1.0),(node_4262*10.4+-10.0),__FoamSpread);
                float3 diffuseColor = (node_7652+saturate(((node_7652-node_3021)*(1.0 - node_3021))));
                float3 diffuse = directDiffuse * diffuseColor;
/// Final Color:
                float3 finalColor = diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor * lerp(lerp(0,1,(node_3639*1.0+0.0)),1.0,_Transparency),0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "Meta"
            Tags {
                "LightMode"="Meta"
            }
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_META 1
            #define SHOULD_SAMPLE_SH ( defined (LIGHTMAP_OFF) && defined(DYNAMICLIGHTMAP_OFF) )
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #include "UnityMetaPass.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma multi_compile LIGHTMAP_OFF LIGHTMAP_ON
            #pragma multi_compile DIRLIGHTMAP_OFF DIRLIGHTMAP_COMBINED DIRLIGHTMAP_SEPARATE
            #pragma multi_compile DYNAMICLIGHTMAP_OFF DYNAMICLIGHTMAP_ON
            #pragma multi_compile_fog
            #pragma exclude_renderers xbox360 ps3 
            #pragma target 3.0
            #pragma glsl
            uniform float4 _TimeEditor;
            uniform float4 _SpecularColor;
            uniform float _Glossiness;
            uniform sampler2D __NormalWave1Vertical; uniform float4 __NormalWave1Vertical_ST;
            uniform float _AnimationSpeed2;
            uniform sampler2D __NormalWave2Horizontal; uniform float4 __NormalWave2Horizontal_ST;
            uniform float _AnimationSpeed1;
            uniform float _Angle1;
            uniform float _Angle2;
            uniform float _ReflectionEdges;
            uniform float _ReflectionIntensity;
            uniform samplerCUBE __Cubemap;
            uniform float _BlurReflection;
            uniform float4 __WaterColor;
            uniform float _SpecularIntensity;
            uniform float __FoamSpread;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float2 texcoord1 : TEXCOORD1;
                float2 texcoord2 : TEXCOORD2;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float2 uv1 : TEXCOORD1;
                float2 uv2 : TEXCOORD2;
                float4 posWorld : TEXCOORD3;
                float3 normalDir : TEXCOORD4;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.uv1 = v.texcoord1;
                o.uv2 = v.texcoord2;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityMetaVertexPosition(v.vertex, v.texcoord1.xy, v.texcoord2.xy, unity_LightmapST, unity_DynamicLightmapST );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : SV_Target {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                UnityMetaInput o;
                UNITY_INITIALIZE_OUTPUT( UnityMetaInput, o );
                
                o.Emission = 0;
                
                float node_3639 = pow(1.0-max(0,dot(normalDirection, viewDirection)),lerp(10.0,0.0,_ReflectionEdges));
                float3 node_7652 = (__WaterColor.rgb+((texCUBElod(__Cubemap,float4(viewReflectDirection,lerp(0,6,_BlurReflection))).rgb*lerp(0.0,2.0,_ReflectionIntensity))+(node_3639*node_3639)));
                float4 node_1438 = _Time + _TimeEditor;
                float node_5203_ang = _Angle1;
                float node_5203_spd = 1.0;
                float node_5203_cos = cos(node_5203_spd*node_5203_ang);
                float node_5203_sin = sin(node_5203_spd*node_5203_ang);
                float2 node_5203_piv = float2(0.5,0.5);
                float2 node_5203 = (mul(i.uv0-node_5203_piv,float2x2( node_5203_cos, -node_5203_sin, node_5203_sin, node_5203_cos))+node_5203_piv);
                float2 node_7363 = (((i.uv0*1.0)+lerp(0.0,(node_1438.r*5.0),_AnimationSpeed1)*float2(0,0.6))+node_5203);
                float3 __NormalWave1Vertical_var = UnpackNormal(tex2D(__NormalWave1Vertical,TRANSFORM_TEX(node_7363, __NormalWave1Vertical)));
                float4 node_8036 = _Time + _TimeEditor;
                float node_5571_ang = _Angle2;
                float node_5571_spd = 1.0;
                float node_5571_cos = cos(node_5571_spd*node_5571_ang);
                float node_5571_sin = sin(node_5571_spd*node_5571_ang);
                float2 node_5571_piv = float2(0.5,0.5);
                float2 node_5571 = (mul(i.uv0-node_5571_piv,float2x2( node_5571_cos, -node_5571_sin, node_5571_sin, node_5571_cos))+node_5571_piv);
                float2 node_1106 = (((i.uv0*1.0)+lerp(0.0,(node_8036.r*(-5.0)),_AnimationSpeed2)*float2(0.6,0))+node_5571);
                float3 __NormalWave2Horizontal_var = UnpackNormal(tex2D(__NormalWave2Horizontal,TRANSFORM_TEX(node_1106, __NormalWave2Horizontal)));
                float node_4262 = (__NormalWave1Vertical_var.b*__NormalWave2Horizontal_var.b);
                float node_3021 = lerp((node_4262*2.0+-1.0),(node_4262*10.4+-10.0),__FoamSpread);
                float3 diffColor = (node_7652+saturate(((node_7652-node_3021)*(1.0 - node_3021))));
                float3 specColor = (_SpecularColor.rgb*lerp(0,2,_SpecularIntensity));
                float roughness = 1.0 - ((node_4262*5.1+-5.0)+_Glossiness);
                o.Albedo = diffColor + specColor * roughness * roughness * 0.5;
                
                return UnityMetaFragment( o );
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
