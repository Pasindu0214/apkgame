.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/StatueSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "StatueSprite.java"


# static fields
.field public static tierFrames:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/StatueSprite;->tierFrames:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x15
        0x20
        0x2b
        0x36
        0x41
    .end array-data
.end method

.method public constructor <init>()V
    .locals 15

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const-string v0, "statue.png"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v2, 0xc

    const/16 v3, 0xf

    .line 4
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 5
    invoke-direct {v0, v1, v2, v3}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 6
    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v5, 0x2

    const/4 v6, 0x1

    .line 7
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 8
    invoke-direct {v1, v5, v6}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v8, 0x7

    new-array v9, v8, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 9
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    aput-object v11, v9, v6

    aput-object v11, v9, v5

    const/4 v12, 0x3

    aput-object v11, v9, v12

    const/4 v13, 0x4

    aput-object v11, v9, v13

    const/4 v11, 0x5

    aput-object v7, v9, v11

    const/4 v14, 0x6

    aput-object v7, v9, v14

    invoke-static {v1, v0, v9, v3, v6}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v3, v14, [Ljava/lang/Object;

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v10

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v12

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v11

    invoke-static {v1, v0, v3, v2, v10}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v3, v12, [Ljava/lang/Object;

    const/16 v7, 0x8

    .line 13
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v10

    const/16 v7, 0x9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v6

    const/16 v7, 0xa

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    invoke-static {v1, v0, v3, v11, v10}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v3, v14, [Ljava/lang/Object;

    const/16 v7, 0xb

    .line 15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v6

    const/16 v2, 0xd

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v5

    const/16 v2, 0xe

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v12

    aput-object v4, v3, v13

    aput-object v4, v3, v11

    invoke-virtual {v1, v0, v3}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method


# virtual methods
.method public blood()I
    .locals 1

    const v0, -0x323249

    return v0
.end method
