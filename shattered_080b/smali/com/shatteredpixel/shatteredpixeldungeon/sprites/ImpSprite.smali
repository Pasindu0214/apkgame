.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ImpSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "ImpSprite.java"


# direct methods
.method public constructor <init>()V
    .locals 21

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const-string v1, "demon.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lcom/watabou/noosa/TextureFilm;

    iget-object v2, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v3, 0xe

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

    const/16 v8, 0x36

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    .line 7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    aput-object v7, v8, v6

    const/4 v11, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v11

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v8, v13

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v10, v8, v15

    const/4 v15, 0x5

    aput-object v7, v8, v15

    const/16 v17, 0x6

    aput-object v12, v8, v17

    const/16 v18, 0x7

    aput-object v14, v8, v18

    const/16 v19, 0x8

    aput-object v10, v8, v19

    const/16 v15, 0x9

    aput-object v10, v8, v15

    aput-object v10, v8, v5

    const/16 v20, 0xb

    aput-object v16, v8, v20

    aput-object v16, v8, v4

    const/16 v4, 0xd

    aput-object v16, v8, v4

    aput-object v16, v8, v3

    const/16 v3, 0xf

    aput-object v16, v8, v3

    const/16 v3, 0x10

    aput-object v16, v8, v3

    const/16 v3, 0x11

    aput-object v16, v8, v3

    const/16 v3, 0x12

    aput-object v16, v8, v3

    const/16 v3, 0x13

    aput-object v16, v8, v3

    const/16 v3, 0x14

    aput-object v16, v8, v3

    const/16 v4, 0x15

    aput-object v10, v8, v4

    const/16 v4, 0x16

    aput-object v7, v8, v4

    const/16 v4, 0x17

    aput-object v12, v8, v4

    const/16 v4, 0x18

    aput-object v14, v8, v4

    const/16 v4, 0x19

    aput-object v10, v8, v4

    const/16 v4, 0x1a

    aput-object v7, v8, v4

    const/16 v4, 0x1b

    aput-object v12, v8, v4

    const/16 v4, 0x1c

    aput-object v14, v8, v4

    const/16 v4, 0x1d

    aput-object v10, v8, v4

    const/16 v4, 0x1e

    aput-object v7, v8, v4

    const/16 v4, 0x1f

    aput-object v14, v8, v4

    const/16 v4, 0x20

    aput-object v10, v8, v4

    const/16 v4, 0x21

    aput-object v10, v8, v4

    const/16 v4, 0x22

    aput-object v10, v8, v4

    const/16 v4, 0x23

    aput-object v16, v8, v4

    const/16 v4, 0x24

    aput-object v16, v8, v4

    const/16 v4, 0x25

    aput-object v16, v8, v4

    const/16 v4, 0x26

    aput-object v16, v8, v4

    const/16 v4, 0x27

    aput-object v16, v8, v4

    const/16 v4, 0x28

    aput-object v16, v8, v4

    const/16 v4, 0x29

    aput-object v16, v8, v4

    const/16 v4, 0x2a

    aput-object v16, v8, v4

    const/16 v4, 0x2b

    aput-object v10, v8, v4

    const/16 v4, 0x2c

    aput-object v10, v8, v4

    const/16 v4, 0x2d

    aput-object v10, v8, v4

    const/16 v4, 0x2e

    aput-object v16, v8, v4

    const/16 v4, 0x2f

    aput-object v16, v8, v4

    const/16 v4, 0x30

    aput-object v16, v8, v4

    const/16 v4, 0x31

    aput-object v16, v8, v4

    const/16 v4, 0x32

    aput-object v16, v8, v4

    const/16 v4, 0x33

    aput-object v16, v8, v4

    const/16 v4, 0x34

    aput-object v16, v8, v4

    const/16 v4, 0x35

    aput-object v16, v8, v4

    .line 8
    invoke-static {v2, v1, v8, v3, v6}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 9
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v10, v3, v9

    .line 10
    invoke-static {v2, v1, v3, v5, v9}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 11
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v3, v15, [Ljava/lang/Object;

    aput-object v10, v3, v9

    aput-object v14, v3, v6

    aput-object v12, v3, v11

    aput-object v7, v3, v13

    const/4 v4, 0x4

    aput-object v10, v3, v4

    const/4 v4, 0x5

    aput-object v14, v3, v4

    aput-object v12, v3, v17

    aput-object v7, v3, v18

    aput-object v10, v3, v19

    .line 12
    invoke-virtual {v2, v1, v3}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 13
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method


# virtual methods
.method public link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    instance-of p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/npcs/Imp;

    if-eqz p1, :cond_0

    const p1, 0x3ecccccd    # 0.4f

    .line 3
    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Visual;->alpha(F)V

    :cond_0
    return-void
.end method

.method public onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v0

    const/16 v1, 0xf

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1, v0, v2, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 4
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V

    :goto_0
    return-void
.end method
