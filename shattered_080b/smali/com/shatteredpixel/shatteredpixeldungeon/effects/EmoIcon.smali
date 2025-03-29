.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;
.super Lcom/watabou/noosa/Image;
.source "EmoIcon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Lost;,
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Alert;,
        Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Sleep;
    }
.end annotation


# instance fields
.field public growing:Z

.field public maxSize:F

.field public owner:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

.field public timeScale:F


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    const/high16 v0, 0x40000000    # 2.0f

    .line 2
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->maxSize:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->timeScale:F

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->growing:Z

    .line 5
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    .line 6
    sget-object p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->scene:Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;

    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/GameScene;->emoicons:Lcom/watabou/noosa/Group;

    invoke-virtual {p1, p0}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    return-void
.end method


# virtual methods
.method public update()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget-boolean v0, p0, Lcom/watabou/noosa/Gizmo;->visible:Z

    if-eqz v0, :cond_2

    .line 3
    iget-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->growing:Z

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->timeScale:F

    mul-float v2, v2, v3

    add-float/2addr v2, v1

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->maxSize:F

    invoke-static {v2, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 7
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    iget v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->maxSize:F

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->growing:Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v1, v0, Lcom/watabou/utils/PointF;->x:F

    sget v2, Lcom/watabou/noosa/Game;->elapsed:F

    iget v3, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->timeScale:F

    mul-float v2, v2, v3

    sub-float/2addr v1, v2

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 10
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 11
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    .line 12
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_1

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->growing:Z

    .line 14
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v1, v0, Lcom/watabou/noosa/Visual;->x:F

    invoke-virtual {v0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v0

    add-float/2addr v0, v1

    iget v1, p0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 15
    iget-object v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->owner:Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;

    iget v0, v0, Lcom/watabou/noosa/Visual;->y:F

    iget v1, p0, Lcom/watabou/noosa/Visual;->height:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->y:F

    :cond_2
    return-void
.end method
