.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "GooSprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite$GooParticle;
    }
.end annotation


# instance fields
.field public pump:Lcom/watabou/noosa/MovieClip$Animation;

.field public pumpAttack:Lcom/watabou/noosa/MovieClip$Animation;

.field public spray:Lcom/watabou/noosa/particles/Emitter;


# direct methods
.method public constructor <init>()V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-direct/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const-string v1, "goo.png"

    .line 2
    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    new-instance v1, Lcom/watabou/noosa/TextureFilm;

    iget-object v2, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v3, 0x14

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 4
    new-instance v2, Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v4, 0xa

    const/4 v5, 0x1

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 6
    invoke-direct {v2, v4, v5}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v7, 0x5

    new-array v8, v7, [Ljava/lang/Object;

    const/4 v9, 0x2

    .line 7
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v10, v8, v11

    aput-object v6, v8, v5

    aput-object v12, v8, v9

    const/4 v13, 0x3

    .line 8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v12, v8, v13

    const/4 v15, 0x4

    .line 9
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v6, v8, v15

    const/16 v4, 0xf

    .line 10
    invoke-static {v2, v1, v8, v4, v5}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 11
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v15, [Ljava/lang/Object;

    aput-object v14, v4, v11

    aput-object v10, v4, v5

    aput-object v6, v4, v9

    aput-object v10, v4, v13

    .line 12
    invoke-static {v2, v1, v4, v3, v5}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 13
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->pump:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v16, v4, v11

    aput-object v14, v4, v5

    aput-object v10, v4, v9

    aput-object v6, v4, v13

    aput-object v12, v4, v15

    .line 14
    invoke-static {v2, v1, v4, v3, v11}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 15
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->pumpAttack:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v3, 0x6

    new-array v4, v3, [Ljava/lang/Object;

    aput-object v16, v4, v11

    aput-object v14, v4, v5

    aput-object v10, v4, v9

    aput-object v6, v4, v13

    aput-object v12, v4, v15

    const/4 v6, 0x7

    .line 16
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    const/16 v8, 0xa

    invoke-static {v2, v1, v4, v8, v11}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 17
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v13, [Ljava/lang/Object;

    const/16 v10, 0x8

    .line 18
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v11

    const/16 v10, 0x9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v5

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v4, v9

    invoke-static {v2, v1, v4, v8, v11}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 19
    iput-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v13, [Ljava/lang/Object;

    .line 20
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v11

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    aput-object v6, v4, v9

    invoke-virtual {v2, v1, v4}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 21
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 22
    invoke-virtual/range {p0 .. p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v1

    iput-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->spray:Lcom/watabou/noosa/particles/Emitter;

    .line 23
    iput-boolean v11, v1, Lcom/watabou/noosa/particles/Emitter;->autoKill:Z

    .line 24
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite$GooParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v3, 0x3d23d70a    # 0.04f

    .line 25
    invoke-virtual {v1, v2, v3, v11}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 26
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->spray:Lcom/watabou/noosa/particles/Emitter;

    iput-boolean v11, v1, Lcom/watabou/noosa/particles/Emitter;->on:Z

    return-void
.end method


# virtual methods
.method public blood()I
    .locals 1

    const/high16 v0, -0x1000000

    return v0
.end method

.method public link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    iget v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HP:I

    mul-int/lit8 v0, v0, 0x2

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->HT:I

    if-gt v0, p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->spray:Lcom/watabou/noosa/particles/Emitter;

    iput-boolean p1, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    :cond_0
    return-void
.end method

.method public onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->pumpAttack:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 4
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->onAttackComplete()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->spray:Lcom/watabou/noosa/particles/Emitter;

    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_1
    :goto_0
    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->spray:Lcom/watabou/noosa/particles/Emitter;

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/particles/Emitter;->pos(Lcom/watabou/utils/PointF;)V

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/GooSprite;->spray:Lcom/watabou/noosa/particles/Emitter;

    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    return-void
.end method
