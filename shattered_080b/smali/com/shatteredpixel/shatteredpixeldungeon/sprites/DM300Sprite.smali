.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "DM300Sprite.java"


# instance fields
.field public charge:Lcom/watabou/noosa/MovieClip$Animation;

.field public exploded:Z

.field public slam:Lcom/watabou/noosa/MovieClip$Animation;

.field public superchargeSparks:Lcom/watabou/noosa/particles/Emitter;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->exploded:Z

    const-string v1, "dm300.png"

    .line 3
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->setAnimations(Z)V

    return-void
.end method


# virtual methods
.method public blood()I
    .locals 1

    const/16 v0, -0x78

    return v0
.end method

.method public die()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->superchargeSparks:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    :cond_0
    return-void
.end method

.method public kill()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->kill()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->superchargeSparks:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_0
    return-void
.end method

.method public link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->superchargeSparks:Lcom/watabou/noosa/particles/Emitter;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/watabou/noosa/particles/Emitter;->autoKill:Z

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/SparkParticle;->STATIC:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v3, 0x3d4ccccd    # 0.05f

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->superchargeSparks:Lcom/watabou/noosa/particles/Emitter;

    iput-boolean v1, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 7
    instance-of v0, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    .line 8
    iget-boolean p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;->supercharged:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->setAnimations(Z)V

    .line 10
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->superchargeSparks:Lcom/watabou/noosa/particles/Emitter;

    iput-boolean p1, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    :cond_0
    return-void
.end method

.method public onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap:Lcom/watabou/noosa/MovieClip$Animation;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->slam:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v0, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->slam:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    .line 5
    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Mob;->enemy:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;->dropRocks(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 6
    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    .line 7
    :cond_2
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v0, :cond_3

    iget-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->exploded:Z

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->exploded:Z

    .line 10
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_blast.mp3"

    .line 11
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 12
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/particles/BlastParticle;->FACTORY:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/16 v1, 0x64

    const/4 v2, 0x0

    .line 13
    invoke-virtual {p1, v0, v2, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 14
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_3
    return-void
.end method

.method public place(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Group;->bringToFront(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->worldToCamera(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    return-void
.end method

.method public final setAnimations(Z)V
    .locals 17

    move-object/from16 v0, p0

    const/16 v1, 0xa

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-eqz p1, :cond_0

    const/16 v5, 0xa

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 2
    :goto_0
    new-instance v6, Lcom/watabou/noosa/TextureFilm;

    iget-object v7, v0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v8, 0x19

    const/16 v9, 0x16

    invoke-direct {v6, v7, v8, v9}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 3
    new-instance v7, Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v8, 0xf

    if-eqz p1, :cond_1

    const/16 v9, 0xf

    goto :goto_1

    :cond_1
    const/16 v9, 0xa

    :goto_1
    const/4 v10, 0x1

    invoke-direct {v7, v9, v10}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v9, 0x2

    new-array v11, v9, [Ljava/lang/Object;

    add-int/lit8 v12, v5, 0x0

    .line 4
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v3

    add-int/lit8 v13, v5, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v10

    invoke-virtual {v7, v6, v11}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 5
    new-instance v7, Lcom/watabou/noosa/MovieClip$Animation;

    if-eqz p1, :cond_2

    const/16 v11, 0xf

    goto :goto_2

    :cond_2
    const/16 v11, 0xa

    :goto_2
    invoke-direct {v7, v11, v10}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v11, v9, [Ljava/lang/Object;

    .line 6
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v3

    add-int/lit8 v12, v5, 0x2

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v11, v10

    invoke-static {v7, v6, v11, v8, v3}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v7

    .line 7
    iput-object v7, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v11, 0x3

    new-array v12, v11, [Ljava/lang/Object;

    add-int/lit8 v13, v5, 0x3

    .line 8
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v3

    add-int/lit8 v13, v5, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v12, v10

    const/4 v13, 0x5

    add-int/2addr v5, v13

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v12, v9

    invoke-virtual {v7, v6, v12}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 9
    iget-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->charge:Lcom/watabou/noosa/MovieClip$Animation;

    if-nez v5, :cond_3

    .line 10
    new-instance v5, Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v7, 0x4

    invoke-direct {v5, v7, v10}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->charge:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v12, v9, [Ljava/lang/Object;

    aput-object v4, v12, v3

    aput-object v2, v12, v10

    .line 11
    invoke-virtual {v5, v6, v12}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 12
    iget-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v5}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v5

    iput-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->slam:Lcom/watabou/noosa/MovieClip$Animation;

    .line 13
    new-instance v5, Lcom/watabou/noosa/MovieClip$Animation;

    invoke-direct {v5, v8, v3}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v12, v7, [Ljava/lang/Object;

    const/4 v14, 0x6

    .line 14
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v12, v3

    const/4 v15, 0x7

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v10

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v12, v11

    const/16 v8, 0x14

    invoke-static {v5, v6, v12, v8, v3}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v5

    .line 15
    iput-object v5, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v4, v8, v3

    aput-object v2, v8, v10

    aput-object v4, v8, v9

    aput-object v2, v8, v11

    aput-object v4, v8, v7

    aput-object v2, v8, v13

    aput-object v4, v8, v14

    aput-object v2, v8, v15

    const/16 v3, 0x8

    aput-object v4, v8, v3

    const/16 v3, 0x9

    aput-object v2, v8, v3

    aput-object v4, v8, v1

    const/16 v1, 0xb

    aput-object v2, v8, v1

    const/16 v1, 0xc

    aput-object v4, v8, v1

    const/16 v1, 0xd

    aput-object v2, v8, v1

    const/16 v1, 0xe

    aput-object v4, v8, v1

    const/16 v1, 0xf

    aput-object v2, v8, v1

    const/16 v1, 0x10

    aput-object v4, v8, v1

    const/16 v1, 0x11

    aput-object v2, v8, v1

    const/16 v1, 0x12

    aput-object v4, v8, v1

    const/16 v1, 0x13

    aput-object v2, v8, v1

    .line 16
    invoke-virtual {v5, v6, v8}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 17
    :cond_3
    iget-object v1, v0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    iget-object v2, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->charge:Lcom/watabou/noosa/MovieClip$Animation;

    if-eq v1, v2, :cond_4

    iget-object v1, v0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    :cond_4
    return-void
.end method

.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->superchargeSparks:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    .line 4
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    instance-of v2, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    .line 5
    iget-boolean v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;->supercharged:Z

    .line 6
    iget-boolean v3, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    if-eq v2, v3, :cond_0

    .line 7
    move-object v2, v1

    check-cast v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    .line 8
    iget-boolean v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;->supercharged:Z

    .line 9
    iput-boolean v2, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 10
    check-cast v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;

    .line 11
    iget-boolean v0, v1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/NewDM300;->supercharged:Z

    .line 12
    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;->setAnimations(Z)V

    :cond_0
    return-void
.end method

.method public zap(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 3
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite$1;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM300Sprite;)V

    const/16 v2, 0xe

    invoke-static {v0, v2, p0, p1, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->boltFromChar(Lcom/watabou/noosa/Group;ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    .line 4
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_puff.mp3"

    .line 5
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method
