.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SlimeSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "SlimeSprite.java"


# direct methods
.method public constructor <init>()V
    .locals 16

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const-string v1, "slime.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lcom/watabou/noosa/TextureFilm;

    iget-object v2, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v3, 0xe

    const/16 v4, 0xc

    invoke-direct {v1, v2, v3, v4}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 4
    new-instance v2, Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v3, 0x1

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x3

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 7
    invoke-direct {v2, v5, v3}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v7, 0x4

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 8
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object v4, v8, v3

    const/4 v11, 0x2

    .line 9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v4, v8, v11

    aput-object v10, v8, v5

    const/16 v4, 0xa

    .line 10
    invoke-static {v2, v1, v8, v4, v3}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 11
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v8, 0x6

    .line 12
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v10, v8, v9

    aput-object v12, v8, v3

    aput-object v6, v8, v11

    aput-object v6, v8, v5

    aput-object v12, v8, v7

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v10, v8, v14

    const/16 v4, 0xf

    .line 13
    invoke-static {v2, v1, v8, v4, v9}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 14
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v12, v4, v9

    aput-object v6, v4, v3

    .line 15
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v11

    aput-object v13, v4, v5

    aput-object v15, v4, v7

    const/16 v6, 0xa

    invoke-static {v2, v1, v4, v6, v9}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 16
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v10, v4, v9

    aput-object v15, v4, v3

    aput-object v13, v4, v11

    const/4 v3, 0x7

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    invoke-virtual {v2, v1, v4}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 18
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method
