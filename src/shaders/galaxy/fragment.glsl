varying vec3 vColor;

precision mediump float;

            void main()
            {
                //shape
                float strength = distance(gl_PointCoord, vec2(0.5));
                strength = 1.0 - strength;
                strength = pow(strength, 10.0);

                //color
                vec3 color = mix(vec3(0.0), vColor, strength);


                gl_FragColor = vec4(color, 1.0);
                #include <colorspace_fragment>
            }