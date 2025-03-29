.class public Lcom/watabou/noosa/NoosaScriptNoLighting;
.super Lcom/watabou/noosa/NoosaScript;
.source "NoosaScriptNoLighting.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/NoosaScript;-><init>()V

    return-void
.end method

.method public static get()Lcom/watabou/noosa/NoosaScriptNoLighting;
    .locals 1

    .line 1
    const-class v0, Lcom/watabou/noosa/NoosaScriptNoLighting;

    invoke-static {v0}, Lcom/watabou/glscripts/Script;->use(Ljava/lang/Class;)Lcom/watabou/glscripts/Script;

    move-result-object v0

    check-cast v0, Lcom/watabou/noosa/NoosaScriptNoLighting;

    return-object v0
.end method


# virtual methods
.method public lighting(FFFFFFFF)V
    .locals 0

    return-void
.end method

.method public shader()Ljava/lang/String;
    .locals 1

    const-string v0, "uniform mat4 uCamera;\nuniform mat4 uModel;\nattribute vec4 aXYZW;\nattribute vec2 aUV;\nvarying vec2 vUV;\nvoid main() {\n  gl_Position = uCamera * uModel * aXYZW;\n  vUV = aUV;\n}\n//\n#ifdef GL_ES\n  #define LOW lowp\n  #define MED mediump\n#else\n  #define LOW\n  #define MED\n#endif\nvarying MED vec2 vUV;\nuniform LOW sampler2D uTex;\nvoid main() {\n  gl_FragColor = texture2D( uTex, vUV );\n}\n"

    return-object v0
.end method
