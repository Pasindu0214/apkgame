.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "EyeSprite.java"


# instance fields
.field public chargeParticles:Lcom/watabou/noosa/particles/Emitter;

.field public charging:Lcom/watabou/noosa/MovieClip$Animation;

.field public zapPos:I


# direct methods
.method public constructor <init>()V
    .locals 11

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const-string v0, "eye.png"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v2, 0x10

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 4
    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v2, 0x8

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v4, 0x3

    .line 5
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v3

    const/4 v8, 0x2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v8

    const/16 v9, 0xc

    invoke-static {v1, v0, v6, v9, v3}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 7
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->charging:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v5, v6, v7

    const/4 v10, 0x4

    .line 8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v3

    invoke-static {v1, v0, v6, v9, v3}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 9
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v9, 0x5

    .line 10
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v7

    const/4 v9, 0x6

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v6, v3

    invoke-static {v1, v0, v6, v2, v7}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 11
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v6, v8, [Ljava/lang/Object;

    aput-object v10, v6, v7

    aput-object v5, v6, v3

    .line 12
    invoke-virtual {v1, v0, v6}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 13
    iget-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v1}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap:Lcom/watabou/noosa/MovieClip$Animation;

    .line 14
    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    invoke-direct {v1, v2, v7}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x7

    .line 15
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-virtual {v1, v0, v4}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method


# virtual methods
.method public die()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->chargeParticles:Lcom/watabou/noosa/particles/Emitter;

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
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->chargeParticles:Lcom/watabou/noosa/particles/Emitter;

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
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->centerEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->chargeParticles:Lcom/watabou/noosa/particles/Emitter;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, v0, Lcom/watabou/noosa/particles/Emitter;->autoKill:Z

    .line 4
    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$MagicParticle;->ATTRACTING:Lcom/watabou/noosa/particles/Emitter$Factory;

    const v3, 0x3d4ccccd    # 0.05f

    .line 5
    invoke-virtual {v0, v2, v3, v1}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->chargeParticles:Lcom/watabou/noosa/particles/Emitter;

    iput-boolean v1, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 7
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;

    iget-boolean p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;->beamCharged:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->charging:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    :cond_0
    return-void
.end method

.method public onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v0, :cond_1

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 4
    iget p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->zapPos:I

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v1

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->zapPos:I

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v2

    iget-object v2, v2, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v2}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v1

    iget v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->zapPos:I

    invoke-static {v2}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {p1, v0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    :goto_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/Eye;->deathGaze()V

    .line 8
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    goto :goto_1

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->chargeParticles:Lcom/watabou/noosa/particles/Emitter;

    invoke-virtual {p1}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_2
    :goto_1
    return-void
.end method

.method public play(Lcom/watabou/noosa/MovieClip$Animation;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->chargeParticles:Lcom/watabou/noosa/particles/Emitter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->charging:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v0, Lcom/watabou/noosa/particles/Emitter;->on:Z

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/watabou/noosa/MovieClip;->curAnim:Lcom/watabou/noosa/MovieClip$Animation;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    if-eq v0, v2, :cond_3

    .line 3
    :cond_2
    invoke-virtual {p0, p1, v1}, Lcom/watabou/noosa/MovieClip;->play(Lcom/watabou/noosa/MovieClip$Animation;Z)V

    :cond_3
    return-void
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->chargeParticles:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/particles/Emitter;->pos(Lcom/watabou/utils/PointF;)V

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->chargeParticles:Lcom/watabou/noosa/particles/Emitter;

    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

    :cond_0
    return-void
.end method

.method public zap(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/EyeSprite;->zapPos:I

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 3
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method
