.class public Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpawnerSprite;
.super Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;
.source "SpawnerSprite.java"


# instance fields
.field public baseY:F


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;-><init>()V

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpawnerSprite;->baseY:F

    const-string v0, "spawner.png"

    .line 3
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    const/high16 v0, 0x3f000000    # 0.5f

    .line 4
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->perspectiveRaise:F

    const/high16 v0, 0x3fa00000    # 1.25f

    .line 5
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowOffset:F

    const v0, 0x3ecccccd    # 0.4f

    .line 6
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowHeight:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowWidth:F

    .line 8
    new-instance v0, Lcom/watabou/noosa/TextureFilm;

    iget-object v1, p0, Lcom/watabou/noosa/Image;->texture:Lcom/watabou/gltextures/SmartTexture;

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2, v2}, Lcom/watabou/noosa/TextureFilm;-><init>(Ljava/lang/Object;II)V

    .line 9
    new-instance v1, Lcom/watabou/noosa/MovieClip$Animation;

    const/4 v3, 0x1

    const/16 v4, 0x8

    invoke-direct {v1, v4, v3}, Lcom/watabou/noosa/MovieClip$Animation;-><init>(IZ)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 10
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/16 v3, 0x9

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xa

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xb

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xd

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xe

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/16 v3, 0xf

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Lcom/watabou/noosa/MovieClip$Animation;->frames(Lcom/watabou/noosa/TextureFilm;[Ljava/lang/Object;)Lcom/watabou/noosa/MovieClip$Animation;

    .line 11
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->run:Lcom/watabou/noosa/MovieClip$Animation;

    .line 12
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->attack:Lcom/watabou/noosa/MovieClip$Animation;

    .line 13
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {v0}, Lcom/watabou/noosa/MovieClip$Animation;->clone()Lcom/watabou/noosa/MovieClip$Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->die:Lcom/watabou/noosa/MovieClip$Animation;

    .line 14
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->idle:Lcom/watabou/noosa/MovieClip$Animation;

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->play(Lcom/watabou/noosa/MovieClip$Animation;)V

    return-void
.end method


# virtual methods
.method public bloodBurstA(Lcom/watabou/utils/PointF;I)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->alive:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1, p2}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->bloodBurstA(Lcom/watabou/utils/PointF;I)V

    :cond_0
    return-void
.end method

.method public die()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->center()Lcom/watabou/utils/PointF;

    move-result-object v0

    const/high16 v1, -0x450000

    const/16 v2, 0x64

    invoke-static {v0, v1, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/Splash;->at(Lcom/watabou/utils/PointF;II)V

    .line 2
    invoke-virtual {p0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

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

    iput p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpawnerSprite;->baseY:F

    return-void
.end method

.method public update()V
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/MobSprite;->update()V

    .line 2
    iget-boolean v0, p0, Lcom/watabou/noosa/MovieClip;->paused:Z

    if-nez v0, :cond_1

    .line 3
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpawnerSprite;->baseY:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/watabou/noosa/Visual;->y:F

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpawnerSprite;->baseY:F

    .line 4
    :cond_0
    iget v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/SpawnerSprite;->baseY:F

    sget v1, Lcom/watabou/noosa/Game;->timeTotal:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    div-double/2addr v1, v3

    double-to-float v1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 v0, 0x3fa00000    # 1.25f

    const v1, 0x3f19999a    # 0.6f

    .line 5
    sget v2, Lcom/watabou/noosa/Game;->timeTotal:F

    float-to-double v5, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    div-double/2addr v5, v3

    double-to-float v2, v5

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;->shadowOffset:F

    :cond_1
    return-void
.end method
