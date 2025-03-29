.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "RipperSprite.java"


# instance fields
.field public alt:Z

.field public leap:Lcom/watabou/noosa/MovieClip$Animation;

.field public prep:Lcom/watabou/noosa/MovieClip$Animation;

.field public stab:Lcom/watabou/noosa/MovieClip$Animation;


# direct methods
.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const/4 v1, 0x2

    .line 2
    invoke-static {v1}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v2

    const/4 v3, 0x0

    .line 3
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 4
    :goto_0
    iput-boolean v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;->alt:Z

    const-string v2, "ripper.png"

    .line 5
    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 6
    new-instance v2, Lcom/watabou/noosa/TextureFilm;

    iget-object v7, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v8, 0xe

    const/16 v9, 0xf

    invoke-direct {v2, v7, v9, v8}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 7
    new-instance v7, Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v10, 0x4

    invoke-direct {v7, v10, v5}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v11, v10, [Ljava/lang/Object;

    aput-object v6, v11, v3

    aput-object v4, v11, v5

    aput-object v6, v11, v1

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    const/4 v13, 0x3

    aput-object v12, v11, v13

    invoke-static {v7, v2, v11, v9, v5}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v7

    .line 9
    iput-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v11, 0x6

    new-array v12, v11, [Ljava/lang/Object;

    .line 10
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v5

    const/4 v14, 0x5

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v12, v1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v13

    const/4 v11, 0x7

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v10

    const/16 v11, 0x8

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v12, v14

    const/16 v11, 0xc

    invoke-static {v7, v2, v12, v11, v3}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v7

    .line 11
    iput-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v4, v12, v3

    const/16 v15, 0x9

    .line 12
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v5

    const/16 v16, 0xa

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v13

    invoke-static {v7, v2, v12, v11, v3}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v7

    .line 13
    iput-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;->stab:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v12, v10, [Ljava/lang/Object;

    aput-object v4, v12, v3

    .line 14
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v5

    const/16 v4, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v12, v13

    invoke-static {v7, v2, v12, v5, v5}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v4

    .line 15
    iput-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;->prep:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v7, v5, [Ljava/lang/Object;

    .line 16
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v7, v3

    invoke-static {v4, v2, v7, v5, v5}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v4

    .line 17
    iput-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;->leap:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v7, v5, [Ljava/lang/Object;

    .line 18
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v3

    invoke-static {v4, v2, v7, v9, v3}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v4

    .line 19
    iput-object v4, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v7, v14, [Ljava/lang/Object;

    aput-object v6, v7, v3

    const/16 v3, 0xd

    .line 20
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v7, v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v13

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v7, v10

    invoke-virtual {v4, v2, v7}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 21
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method


# virtual methods
.method public attack(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 3
    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;->alt:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;->stab:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;->alt:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;->alt:Z

    return-void
.end method

.method public jump(IILcom/watabou/utils/Callback;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->jump(IILcom/watabou/utils/Callback;)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;->leap:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method

.method public onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/RipperSprite;->stab:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method
