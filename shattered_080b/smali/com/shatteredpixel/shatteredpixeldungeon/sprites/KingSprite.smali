.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/KingSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "KingSprite.java"


# direct methods
.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const-string v1, "king.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lcom/watabou/noosa/TextureFilm;

    iget-object v2, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v3, 0x10

    invoke-direct {v1, v2, v3, v3}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 4
    new-instance v2, Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v3, 0xc

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v5, 0xe

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 5
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v8, v6, v4

    const/4 v9, 0x2

    aput-object v8, v6, v9

    const/4 v10, 0x3

    aput-object v8, v6, v10

    const/4 v11, 0x4

    aput-object v8, v6, v11

    const/4 v12, 0x5

    aput-object v8, v6, v12

    const/4 v13, 0x6

    aput-object v8, v6, v13

    const/4 v14, 0x7

    aput-object v8, v6, v14

    const/16 v15, 0x8

    aput-object v8, v6, v15

    const/16 v16, 0x9

    aput-object v8, v6, v16

    const/16 v17, 0xa

    aput-object v8, v6, v17

    const/16 v18, 0xb

    aput-object v8, v6, v18

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/16 v19, 0xd

    aput-object v8, v6, v19

    const/16 v8, 0xf

    invoke-static {v2, v1, v6, v8, v4}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 6
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v6, v13, [Ljava/lang/Object;

    .line 7
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v6, v7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v6, v4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v6, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v10

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v11

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v6, v12

    invoke-static {v2, v1, v6, v8, v7}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 8
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v6, v10, [Ljava/lang/Object;

    .line 9
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v7

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v4

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v6, v9

    invoke-static {v2, v1, v6, v15, v7}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 10
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v6, v11, [Ljava/lang/Object;

    .line 11
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v10

    invoke-virtual {v2, v1, v6}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 12
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method
