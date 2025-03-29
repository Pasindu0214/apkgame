.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "WardSprite.java"


# instance fields
.field public baseY:F

.field public tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;


# direct methods
.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/watabou/noosa/MovieClip$Animation;

    .line 2
    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->baseY:F

    const-string v0, "wards.png"

    .line 4
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v2}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    aput-object v1, v0, v2

    .line 6
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    aget-object v0, v0, v2

    new-array v1, v2, [Lcom/watabou/utils/RectF;

    iget-object v3, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v4, 0x41200000    # 10.0f

    const/4 v5, 0x0

    const/high16 v6, 0x41100000    # 9.0f

    invoke-virtual {v3, v5, v5, v6, v4}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object v3

    const/4 v6, 0x0

    aput-object v3, v1, v6

    .line 7
    iput-object v1, v0, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    .line 8
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    invoke-direct {v1, v2, v2}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    .line 9
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    aget-object v0, v0, v3

    new-array v1, v2, [Lcom/watabou/utils/RectF;

    iget-object v3, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v7, 0x41a80000    # 21.0f

    const/high16 v8, 0x41400000    # 12.0f

    invoke-virtual {v3, v4, v5, v7, v8}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object v3

    aput-object v3, v1, v6

    .line 10
    iput-object v1, v0, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    invoke-direct {v1, v2, v2}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    const/4 v3, 0x3

    aput-object v1, v0, v3

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    aget-object v0, v0, v3

    new-array v1, v2, [Lcom/watabou/utils/RectF;

    iget-object v3, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v4, 0x41b00000    # 22.0f

    const/high16 v7, 0x42140000    # 37.0f

    const/high16 v8, 0x41800000    # 16.0f

    invoke-virtual {v3, v4, v5, v7, v8}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object v3

    aput-object v3, v1, v6

    .line 13
    iput-object v1, v0, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    invoke-direct {v1, v2, v2}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    const/4 v3, 0x4

    aput-object v1, v0, v3

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    aget-object v0, v0, v3

    new-array v1, v2, [Lcom/watabou/utils/RectF;

    iget-object v3, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v4, 0x42180000    # 38.0f

    const/high16 v7, 0x42300000    # 44.0f

    const/high16 v8, 0x41500000    # 13.0f

    invoke-virtual {v3, v4, v5, v7, v8}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object v3

    aput-object v3, v1, v6

    .line 16
    iput-object v1, v0, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    .line 17
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    invoke-direct {v1, v2, v2}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    const/4 v3, 0x5

    aput-object v1, v0, v3

    .line 18
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    aget-object v0, v0, v3

    new-array v1, v2, [Lcom/watabou/utils/RectF;

    iget-object v3, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v4, 0x42340000    # 45.0f

    const/high16 v7, 0x424c0000    # 51.0f

    const/high16 v8, 0x41700000    # 15.0f

    invoke-virtual {v3, v4, v5, v7, v8}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object v3

    aput-object v3, v1, v6

    .line 19
    iput-object v1, v0, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    .line 20
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    invoke-direct {v1, v2, v2}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    const/4 v3, 0x6

    aput-object v1, v0, v3

    .line 21
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    aget-object v0, v0, v3

    new-array v1, v2, [Lcom/watabou/utils/RectF;

    iget-object v2, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/high16 v3, 0x42500000    # 52.0f

    const/high16 v4, 0x42700000    # 60.0f

    invoke-virtual {v2, v3, v5, v4, v8}, Lcom/watabou/gltextures/SmartTexture;->uvRect(FFFF)Lcom/watabou/utils/RectF;

    move-result-object v2

    aput-object v2, v1, v6

    .line 22
    iput-object v1, v0, Lcom/watabou/noosa/MovieClip$Animation;->frames:[Lcom/watabou/utils/RectF;

    return-void
.end method


# virtual methods
.method public die()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die()V

    .line 2
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/watabou/noosa/MovieClip;->play(Lcom/watabou/noosa/MovieClip$Animation;Z)V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v2, 0x0

    const/16 v3, 0xa

    .line 4
    invoke-virtual {v0, v1, v2, v3}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite$1;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-direct {v1, p0, p0, v2, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;Lcom/watabou/noosa/Visual;FF)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method

.method public linkVisuals(Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    iget p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->tier:I

    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->updateTier(I)V

    return-void
.end method

.method public place(I)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->worldToCamera(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/watabou/noosa/Visual;->point(Lcom/watabou/utils/PointF;)Lcom/watabou/utils/PointF;

    .line 2
    iget p1, p0, Lcom/watabou/noosa/Visual;->y:F

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->baseY:F

    return-void
.end method

.method public turnTo(II)V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->update()V

    .line 2
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->perspectiveRaise:F

    const/high16 v1, 0x3ec00000    # 0.375f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    iget-boolean v0, p0, Lcom/watabou/noosa/MovieClip;->paused:Z

    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->baseY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/watabou/noosa/Visual;->y:F

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->baseY:F

    .line 4
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->baseY:F

    sget v1, Lcom/watabou/noosa/Game;->timeTotal:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v0, 0x3e800000    # 0.25f

    const v1, 0x3f4ccccd    # 0.8f

    .line 5
    sget v2, Lcom/watabou/noosa/Game;->timeTotal:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowOffset:F

    :cond_1
    return-void
.end method

.method public updateTier(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/WardSprite;->tierIdles:[Lcom/watabou/noosa/MovieClip$Animation;

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    .line 2
    invoke-virtual {v0}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    .line 3
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    .line 4
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    .line 5
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p0}, Lcom/watabou/noosa/Group;->sendToBack(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    .line 8
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowHeight:F

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowWidth:F

    const/high16 p1, 0x41800000    # 16.0f

    .line 9
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->height()F

    move-result v0

    sub-float/2addr p1, v0

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->perspectiveRaise:F

    goto :goto_0

    :cond_1
    const p1, 0x3f99999a    # 1.2f

    .line 10
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowWidth:F

    const/high16 p1, 0x3e800000    # 0.25f

    .line 11
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowHeight:F

    const/high16 p1, 0x3ec00000    # 0.375f

    .line 12
    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->perspectiveRaise:F

    :goto_0
    return-void
.end method

.method public zap(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    .line 2
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->flash()V

    .line 3
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->emitter()Lcom/watabou/noosa/particles/Emitter;

    move-result-object v0

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/MagicMissile$WardParticle;->UP:Lcom/watabou/noosa/particles/Emitter$Factory;

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v1, v3, v2}, Lcom/watabou/noosa/particles/Emitter;->start(Lcom/watabou/noosa/particles/Emitter$Factory;FI)V

    .line 5
    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v2

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->findChar(I)Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    move-result-object p1

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;->sprite:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    invoke-virtual {p1}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/Gizmo;->parent:Lcom/watabou/noosa/Group;

    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v2

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/tiles/DungeonTilemap;->raisedTileCenterToWorld(I)Lcom/watabou/utils/PointF;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Beam$DeathRay;-><init>(Lcom/watabou/utils/PointF;Lcom/watabou/utils/PointF;)V

    invoke-virtual {v0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    :goto_0
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->ch:Lcom/shatteredpixel/shatteredpixeldungeon/actors/Char;

    check-cast p1, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;

    .line 9
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/items/wands/WandOfWarding$Ward;->zap()V

    .line 10
    invoke-virtual {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/actors/Actor;->next()V

    return-void
.end method
