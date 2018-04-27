Shader "Custom/TransportableArea" {
	Properties{
		_Tint("Tint",Color) = (1,1,1,1)
		_Tex("Texture", 2D) = "white" {}
		_Scale("Scale", Float) = 1
	}

	SubShader{
		Tags{
		"Queue" = "Geometry"
		"IgnoreProjector" = "False"
		"RenderType" = "Transparent"
		}

		Cull Back
		ZWrite On
			Lighting Off

		CGPROGRAM
		#pragma surface surf Lambert alpha Nolighting
		#pragma exclude_renderers flash

		sampler2D _Tex;
		float4 _Tint;
		float _Scale;

		struct Input {
			float3 worldPos;
			float3 worldNormal;
		};

		void surf(Input IN, inout SurfaceOutput o) {
			float3 projNormal = saturate(pow(IN.worldNormal * 1.4, 4));

			// SIDE X
			float4 x = tex2D(_Tex, frac(IN.worldPos.zy * _Scale)) * abs(IN.worldNormal.x) + _Tint;

			// TOP / BOTTOM
			float4 y = 0;
			if (IN.worldNormal.y > 0) {
				y = tex2D(_Tex, frac(IN.worldPos.zx * _Scale)) * abs(IN.worldNormal.y) + _Tint;
			}
			else {
				y = tex2D(_Tex, frac(IN.worldPos.zx * _Scale)) * abs(IN.worldNormal.y) + _Tint;
			}

			// SIDE Z	
			float3 z = tex2D(_Tex, frac(IN.worldPos.xy * _Scale)) * abs(IN.worldNormal.z) + _Tint;

			o.Albedo = z;
			o.Albedo = lerp(o.Albedo, x, projNormal.x);
			o.Albedo = lerp(o.Albedo, y, projNormal.y);
			o.Alpha = y.a;
		}
		ENDCG
	}
	Fallback "Diffuse"
}
