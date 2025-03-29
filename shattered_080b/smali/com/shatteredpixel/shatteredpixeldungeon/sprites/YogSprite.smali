.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/YogSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "YogSprite.java"


# direct methods
.method public constructor <init>()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const/high16 v1, 0x3ea00000    # 0.3125f

    .line 2
    iput v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->perspectiveRaise:F

    const-string v1, "yog.png"

    .line 3
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Lcom/watabou/noosa/TextureFilm;

    iget-object v2, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v3, 0x14

    const/16 v4, 0x13

    invoke-direct {v1, v2, v3, v4}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 5
    new-instance v2, Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v3, 0xa

    const/4 v4, 0x1

    .line 6
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 7
    invoke-direct {v2, v3, v4}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v6, 0xf

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v5, v6, v4

    const/4 v9, 0x2

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v9

    const/4 v11, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v10, v6, v11

    const/4 v10, 0x4

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v5, v6, v10

    const/4 v5, 0x5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v8, v6, v5

    const/4 v5, 0x6

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v12, v6, v5

    const/4 v5, 0x7

    aput-object v13, v6, v5

    const/16 v16, 0x8

    aput-object v13, v6, v16

    const/16 v13, 0x9

    aput-object v12, v6, v13

    aput-object v8, v6, v3

    const/16 v12, 0xb

    aput-object v14, v6, v12

    const/16 v12, 0xc

    aput-object v15, v6, v12

    const/16 v17, 0xd

    aput-object v15, v6, v17

    const/16 v15, 0xe

    aput-object v14, v6, v15

    invoke-static {v2, v1, v6, v12, v4}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 9
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v8, v6, v7

    .line 10
    invoke-static {v2, v1, v6, v12, v7}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 11
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v8, v6, v7

    .line 12
    invoke-static {v2, v1, v6, v3, v7}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 13
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v3, v10, [Ljava/lang/Object;

    aput-object v8, v3, v7

    .line 14
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v11

    invoke-virtual {v2, v1, v3}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 15
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method


# virtual methods
.method public die()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    const/high16 v1, -0x450000

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(Lcom/watabou/utils/PointF;II)V

    return-void
.end method

.method public link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->renderShadow:Z

    return-void
.end method
