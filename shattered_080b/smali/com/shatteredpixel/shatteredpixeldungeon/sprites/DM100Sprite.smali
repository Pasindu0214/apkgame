.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/DM100Sprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "DM100Sprite.java"


# direct methods
.method public constructor <init>()V
    .locals 15

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const-string v0, "dm100.png"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 3
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v2, 0xe

    const/16 v3, 0x10

    invoke-direct {v0, v1, v3, v2}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 4
    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v3, 0x1

    .line 5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 6
    invoke-direct {v1, v3, v3}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 7
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    aput-object v4, v6, v3

    const/16 v9, 0xc

    invoke-static {v1, v0, v6, v9, v3}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 8
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v6, 0x4

    new-array v10, v6, [Ljava/lang/Object;

    const/4 v11, 0x6

    .line 9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v7

    const/4 v12, 0x7

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v10, v3

    const/16 v12, 0x8

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v5

    const/16 v13, 0x9

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v10, v14

    invoke-static {v1, v0, v10, v9, v7}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 10
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v10, v6, [Ljava/lang/Object;

    .line 11
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v7

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v10, v5

    aput-object v8, v10, v14

    invoke-static {v1, v0, v10, v12, v7}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v8, v14, [Ljava/lang/Object;

    const/4 v10, 0x5

    .line 13
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v8, v7

    aput-object v12, v8, v3

    aput-object v4, v8, v5

    invoke-static {v1, v0, v8, v9, v7}, La/a/a/a/a;->a(Lcom/watabou/noosa/MovieClip$Animation;Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;IZ)Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v1

    .line 14
    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v4, v11, [Ljava/lang/Object;

    const/16 v8, 0xa

    .line 15
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v7

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v5

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v14

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v6

    const/16 v2, 0xf

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v10

    invoke-virtual {v1, v0, v4}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 16
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method


# virtual methods
.method public die()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    const/4 v1, 0x7

    invoke-static {v1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Speck;->factory(I)Lcom/watabou/noosa/particles/Emitter$Factory;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x5

    .line 2
    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 3
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

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

.method public zap(I)V
    .locals 9

    .line 1
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v1

    .line 3
    iget-boolean v2, p0, Lcom/watabou/noosa/Image;->flipHorizontal:Z

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_0

    .line 4
    iget v2, v1, Lcom/watabou/utils/PointF;->y:F

    const/high16 v4, 0x40c00000    # 6.0f

    iget-object v5, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v6, v5, Lcom/watabou/utils/PointF;->y:F

    mul-float v6, v6, v4

    sub-float/2addr v2, v6

    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    .line 5
    iget v2, v1, Lcom/watabou/utils/PointF;->x:F

    iget v4, v5, Lcom/watabou/utils/PointF;->x:F

    mul-float v4, v4, v3

    sub-float/2addr v2, v4

    iput v2, v1, Lcom/watabou/utils/PointF;->x:F

    goto :goto_0

    .line 6
    :cond_0
    iget v2, v1, Lcom/watabou/utils/PointF;->y:F

    const/high16 v4, 0x41000000    # 8.0f

    iget-object v5, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v6, v5, Lcom/watabou/utils/PointF;->y:F

    mul-float v6, v6, v4

    sub-float/2addr v2, v6

    iput v2, v1, Lcom/watabou/utils/PointF;->y:F

    .line 7
    iget v2, v1, Lcom/watabou/utils/PointF;->x:F

    iget v4, v5, Lcom/watabou/utils/PointF;->x:F

    mul-float v4, v4, v3

    add-float/2addr v4, v2

    iput v4, v1, Lcom/watabou/utils/PointF;->x:F

    :goto_0
    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_1

    .line 8
    iget-object v5, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v6, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;

    iget-object v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->destinationCenter()Lcom/watabou/utils/PointF;

    move-result-object v0

    iget-object v7, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v7, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM100;

    new-array v4, v4, [Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    .line 9
    new-instance v8, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    invoke-direct {v8, v1, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    aput-object v8, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v6, v0, v7}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;-><init>(Ljava/util/List;Lcom/watabou/utils/Callback;)V

    .line 10
    invoke-virtual {v5, v6}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_1

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v5, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;

    iget-object v6, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast v6, Lcom/shatteredpixel/shatteredpixeldungeon/actors/mobs/DM100;

    new-array v4, v4, [Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    .line 12
    new-instance v7, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;

    .line 13
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->tileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object v8

    invoke-direct {v7, v1, v8}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning$Arc;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    aput-object v7, v4, v2

    .line 14
    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v5, v1, v6}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Lightning;-><init>(Ljava/util/List;Lcom/watabou/utils/Callback;)V

    .line 15
    invoke-virtual {v0, v5}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 16
    :goto_1
    sget-object v0, Lcom/watabou/noosa/audio/Sample;->INSTANCE:Lcom/watabou/noosa/audio/Sample;

    const-string v1, "snd_lightning.mp3"

    .line 17
    invoke-virtual {v0, v1, v3, v3, v3}, Lcom/watabou/noosa/audio/Sample;->play(Ljava/lang/Object;FFF)J

    .line 18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    iget v0, v0, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->pos:I

    invoke-virtual {p0, v0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->turnTo(II)V

    .line 19
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flash()V

    .line 20
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->zap:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method
