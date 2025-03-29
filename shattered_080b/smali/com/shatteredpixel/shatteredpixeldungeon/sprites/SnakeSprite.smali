.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SnakeSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "SnakeSprite.java"


# direct methods
.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const-string v1, "snake.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lcom/watabou/noosa/TextureFilm;

    iget-object v2, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v3, 0xb

    const/16 v4, 0xc

    invoke-direct {v1, v2, v4, v3}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 4
    new-instance v2, Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v5, 0xa

    const/4 v6, 0x1

    .line 5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 6
    invoke-direct {v2, v5, v6}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v8, 0x1e

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object v10, v8, v6

    const/4 v11, 0x2

    .line 8
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v10, v8, v11

    const/4 v11, 0x3

    aput-object v10, v8, v11

    const/4 v13, 0x4

    aput-object v10, v8, v13

    const/4 v14, 0x5

    aput-object v10, v8, v14

    const/4 v15, 0x6

    aput-object v10, v8, v15

    const/16 v16, 0x7

    aput-object v10, v8, v16

    const/16 v15, 0x8

    aput-object v10, v8, v15

    const/16 v17, 0x9

    .line 9
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v10, v8, v17

    aput-object v10, v8, v5

    aput-object v10, v8, v3

    aput-object v10, v8, v4

    const/16 v4, 0xd

    aput-object v10, v8, v4

    const/16 v17, 0xe

    aput-object v10, v8, v17

    const/16 v4, 0xf

    aput-object v7, v8, v4

    const/16 v19, 0x10

    aput-object v7, v8, v19

    const/16 v19, 0x11

    aput-object v7, v8, v19

    const/16 v19, 0x12

    aput-object v7, v8, v19

    const/16 v19, 0x13

    aput-object v7, v8, v19

    const/16 v19, 0x14

    aput-object v7, v8, v19

    const/16 v19, 0x15

    aput-object v7, v8, v19

    const/16 v19, 0x16

    aput-object v7, v8, v19

    const/16 v19, 0x17

    aput-object v7, v8, v19

    const/16 v19, 0x18

    aput-object v7, v8, v19

    const/16 v19, 0x19

    aput-object v12, v8, v19

    .line 10
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v20, 0x1a

    aput-object v19, v8, v20

    const/16 v19, 0x1b

    aput-object v12, v8, v19

    const/16 v12, 0x1c

    aput-object v7, v8, v12

    const/16 v12, 0x1d

    aput-object v7, v8, v12

    .line 11
    invoke-static {v2, v1, v8, v15, v6}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 12
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v7, v13, [Ljava/lang/Object;

    .line 13
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v6

    const/4 v8, 0x6

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v12, 0x2

    aput-object v8, v7, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-static {v2, v1, v7, v4, v9}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 14
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v14, [Ljava/lang/Object;

    .line 15
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v9

    aput-object v18, v4, v6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v4, v8

    aput-object v18, v4, v11

    aput-object v10, v4, v13

    invoke-static {v2, v1, v4, v5, v9}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 16
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v11, [Ljava/lang/Object;

    .line 17
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v9

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v6

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x2

    aput-object v3, v4, v5

    invoke-virtual {v2, v1, v4}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 18
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method
