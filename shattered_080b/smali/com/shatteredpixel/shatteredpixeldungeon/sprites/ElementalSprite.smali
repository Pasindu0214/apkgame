.class public abstract Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "ElementalSprite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$Chaos;,
        Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$Shock;,
        Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$Frost;,
        Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$NewbornFire;,
        Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$Fire;
    }
.end annotation


# instance fields
.field public boltType:I

.field public particles:Lcom/watabou/noosa/particles/Emitter;


# direct methods
.method public constructor <init>()V
    .locals 12

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;->texOffset()I

    move-result v0

    const-string v1, "elemental.png"

    .line 3
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 4
    new-instance v1, Lcom/watabou/noosa/TextureFilm;

    iget-object v2, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v3, 0xc

    const/16 v4, 0xe

    invoke-direct {v1, v2, v3, v4}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 5
    new-instance v2, Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v4, 0xa

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v4, 0x3

    new-array v6, v4, [Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x0

    .line 6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v6, v9

    add-int/lit8 v8, v0, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v6, v5

    add-int/lit8 v10, v0, 0x2

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v6, v11

    invoke-static {v2, v1, v6, v3, v5}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 7
    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v3, v4, [Ljava/lang/Object;

    .line 8
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v9

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v6, v0, 0x3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v11

    const/16 v6, 0xf

    invoke-static {v2, v1, v3, v6, v9}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    .line 9
    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v3, v4, [Ljava/lang/Object;

    add-int/lit8 v7, v0, 0x4

    .line 10
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v9

    add-int/lit8 v7, v0, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v5

    add-int/lit8 v7, v0, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v3, v11

    invoke-virtual {v2, v1, v3}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 11
    iget-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v2}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap:Lcom/watabou/noosa/MovieClip$Animation;

    .line 12
    new-instance v2, Lcom/watabou/noosa/MovieClip$Animation;

    invoke-direct {v2, v6, v9}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v2, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    add-int/lit8 v6, v0, 0x7

    .line 13
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v9

    add-int/lit8 v6, v0, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v3, v5

    add-int/lit8 v5, v0, 0x9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v11

    add-int/lit8 v5, v0, 0xa

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    add-int/lit8 v4, v0, 0xb

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x4

    aput-object v4, v3, v5

    add-int/lit8 v4, v0, 0xc

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x5

    aput-object v5, v3, v6

    add-int/lit8 v0, v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v5, 0x6

    aput-object v0, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v4, 0x7

    aput-object v0, v3, v4

    invoke-virtual {v2, v1, v3}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method


# virtual methods
.method public abstract createEmitter()Lcom/watabou/noosa/particles/Emitter;
.end method

.method public die()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;->particles:Lcom/watabou/noosa/particles/Emitter;

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
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;->particles:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    :cond_0
    return-void
.end method

.method public link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->link(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V

    .line 2
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;->particles:Lcom/watabou/noosa/particles/Emitter;

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;->createEmitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object p1

    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;->particles:Lcom/watabou/noosa/particles/Emitter;

    :cond_0
    return-void
.end method

.method public onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap:Lcom/watabou/noosa/MovieClip$Animation;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 3
    :cond_0
    invoke-super {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->onComplete(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method

.method public abstract texOffset()I
.end method

.method public update()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->update()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;->particles:Lcom/watabou/noosa/particles/Emitter;

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v1, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    iput-boolean v1, v0, Lcom/watabou/noosa/Gizmo;->visible:Z

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

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;->boltType:I

    new-instance v2, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$1;

    invoke-direct {v2, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/ElementalSprite;)V

    invoke-static {v0, v1, p0, p1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;->boltFromChar(Lcom/watabou/noosa/Group;ILcom/watabou/noosa/Visual;ILcom/watabou/utils/Callback;)Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile;

    .line 4
    sget-object p1, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const/high16 v0, 0x3f800000    # 1.0f

    const-string v1, "snd_zap.mp3"

    .line 5
    invoke-virtual {p1, v1, v0, v0, v0}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    return-void
.end method
