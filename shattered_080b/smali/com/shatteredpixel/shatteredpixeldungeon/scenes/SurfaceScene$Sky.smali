.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Sky;
.super Lcom/watabou/noosa/Visual;
.source "SurfaceScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sky"
.end annotation


# static fields
.field public static final day:[I

.field public static final night:[I


# instance fields
.field public texture:Lcom/watabou/gltextures/SmartTexture;

.field public verticesBuffer:Ljava/nio/FloatBuffer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Sky;->day:[I

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_1

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Sky;->night:[I

    return-void

    :array_0
    .array-data 4
        -0xbb7701
        -0x331101
    .end array-data

    :array_1
    .array-data 4
        -0xffeeab
        -0xcca680
    .end array-data
.end method

.method public constructor <init>(Z)V
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v1, v1, v0, v0}, Lcom/watabou/noosa/Visual;-><init>(FFFF)V

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Sky;->day:[I

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Sky;->night:[I

    :goto_0
    invoke-static {p1}, Lcom/watabou/gltextures/TextureCache;->createGradient([I)Lcom/watabou/gltextures/SmartTexture;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Sky;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 p1, 0x10

    new-array p1, p1, [F

    .line 3
    fill-array-data p1, :array_0

    .line 4
    invoke-static {}, Lcom/watabou/glwrap/Quad;->create()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Sky;->verticesBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Sky;->verticesBuffer:Ljava/nio/FloatBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x3e800000    # 0.25f
        0x0
        0x3f800000    # 1.0f
        0x0
        0x3e800000    # 0.25f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x3f800000    # 1.0f
        0x0
        0x3f800000    # 1.0f
        0x3f400000    # 0.75f
        0x0
    .end array-data
.end method


# virtual methods
.method public draw()V
    .locals 10

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->draw()V

    .line 2
    invoke-static {}, Lcom/watabou/noosa/NoosaScript;->get()Lcom/watabou/noosa/NoosaScript;

    move-result-object v9

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Sky;->texture:Lcom/watabou/gltextures/SmartTexture;

    invoke-virtual {v0}, Lcom/watabou/gltextures/SmartTexture;->bind()V

    .line 4
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->camera()Lcom/watabou/noosa/Camera;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/watabou/noosa/NoosaScript;->camera(Lcom/watabou/noosa/Camera;)V

    .line 5
    iget-object v0, v9, Lcom/watabou/noosa/NoosaScript;->uModel:Lcom/watabou/glwrap/Uniform;

    iget-object v1, p0, Lcom/watabou/noosa/Visual;->matrix:[F

    invoke-virtual {v0, v1}, Lcom/watabou/glwrap/Uniform;->valueM4([F)V

    .line 6
    iget v1, p0, Lcom/watabou/noosa/Visual;->rm:F

    iget v2, p0, Lcom/watabou/noosa/Visual;->gm:F

    iget v3, p0, Lcom/watabou/noosa/Visual;->bm:F

    iget v4, p0, Lcom/watabou/noosa/Visual;->am:F

    iget v5, p0, Lcom/watabou/noosa/Visual;->ra:F

    iget v6, p0, Lcom/watabou/noosa/Visual;->ga:F

    iget v7, p0, Lcom/watabou/noosa/Visual;->ba:F

    iget v8, p0, Lcom/watabou/noosa/Visual;->aa:F

    move-object v0, v9

    invoke-virtual/range {v0 .. v8}, Lcom/watabou/noosa/NoosaScript;->lighting(FFFFFFFF)V

    .line 7
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Sky;->verticesBuffer:Ljava/nio/FloatBuffer;

    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 9
    iget-object v2, v9, Lcom/watabou/noosa/NoosaScript;->aXY:Lcom/watabou/glwrap/Attribute;

    const/4 v3, 0x4

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3, v0}, Lcom/watabou/glwrap/Attribute;->vertexPointer(IILjava/nio/FloatBuffer;)V

    .line 10
    invoke-virtual {v0, v4}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 11
    iget-object v2, v9, Lcom/watabou/noosa/NoosaScript;->aUV:Lcom/watabou/glwrap/Attribute;

    invoke-virtual {v2, v4, v3, v0}, Lcom/watabou/glwrap/Attribute;->vertexPointer(IILjava/nio/FloatBuffer;)V

    .line 12
    sget-object v0, La/b/a/e;->h:La/b/a/o/d;

    sget v2, Lcom/watabou/glwrap/Quad;->SIZE:I

    check-cast v0, La/b/a/m/a/j;

    if-eqz v0, :cond_0

    const/16 v0, 0x1403

    .line 13
    invoke-static {v3, v2, v0, v1}, Landroid/opengl/GLES20;->glDrawElements(IIII)V

    return-void

    :cond_0
    const/4 v0, 0x0

    throw v0
.end method
