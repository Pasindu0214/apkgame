.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon$Lost;
.super Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;
.source "EmoIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lost"
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/sprites/CharSprite;)V

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->LOST:Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;

    invoke-static {v0}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;->get(Lcom/shatteredpixel/shatteredpixeldungeon/ui/Icons;)Lcom/watabou/noosa/Image;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->copy(Lcom/watabou/noosa/Image;)V

    const/high16 v0, 0x3fa00000    # 1.25f

    .line 3
    iput v0, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->maxSize:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/effects/EmoIcon;->timeScale:F

    .line 5
    iget-object v2, p0, Lcom/watabou/noosa/Visual;->origin:Lcom/watabou/utils/PointF;

    iget v3, p0, Lcom/watabou/noosa/Visual;->height:F

    const/high16 v4, 0x40200000    # 2.5f

    sub-float/2addr v3, v4

    .line 6
    iput v4, v2, Lcom/watabou/utils/PointF;->x:F

    .line 7
    iput v3, v2, Lcom/watabou/utils/PointF;->y:F

    .line 8
    iget-object v2, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    invoke-static {v1, v0}, Lcom/watabou/utils/Random;->Float(FF)F

    move-result v0

    .line 9
    iput v0, v2, Lcom/watabou/utils/PointF;->x:F

    .line 10
    iput v0, v2, Lcom/watabou/utils/PointF;->y:F

    .line 11
    iget v0, p1, Lcom/watabou/noosa/Visual;->x:F

    iget v1, p1, Lcom/watabou/noosa/Visual;->width:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/watabou/noosa/Visual;->width:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 12
    iget p1, p1, Lcom/watabou/noosa/Visual;->y:F

    iget v0, p0, Lcom/watabou/noosa/Visual;->height:F

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/watabou/noosa/Visual;->y:F

    return-void
.end method
