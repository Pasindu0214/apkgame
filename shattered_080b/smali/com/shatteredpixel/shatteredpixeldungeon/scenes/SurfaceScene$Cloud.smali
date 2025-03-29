.class public Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Cloud;
.super Lcom/watabou/noosa/Image;
.source "SurfaceScene.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Cloud"
.end annotation


# static fields
.field public static lastIndex:I = -0x1


# direct methods
.method public constructor <init>(FZ)V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/watabou/noosa/Image;-><init>()V

    const-string v0, "surface.png"

    .line 2
    invoke-virtual {p0, v0}, Lcom/watabou/noosa/Image;->texture(Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x3

    .line 3
    invoke-static {v0}, Lcom/watabou/utils/Random;->Int(I)I

    move-result v0

    .line 4
    sget v1, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Cloud;->lastIndex:I

    if-eq v0, v1, :cond_0

    const/16 v1, 0x14

    const/16 v2, 0x31

    const/16 v3, 0x58

    if-eqz v0, :cond_3

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x2a

    const/16 v2, 0x32

    const/16 v4, 0x12

    .line 5
    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/watabou/noosa/Image;->frame(IIII)V

    goto :goto_0

    :cond_2
    const/16 v4, 0x16

    .line 6
    invoke-virtual {p0, v3, v1, v2, v4}, Lcom/watabou/noosa/Image;->frame(IIII)V

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    .line 7
    invoke-virtual {p0, v3, v4, v2, v1}, Lcom/watabou/noosa/Image;->frame(IIII)V

    .line 8
    :goto_0
    sput v0, Lcom/shatteredpixel/shatteredpixeldungeon/scenes/SurfaceScene$Cloud;->lastIndex:I

    .line 9
    iput p1, p0, Lcom/watabou/noosa/Visual;->y:F

    .line 10
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x42e00000    # 112.0f

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float p1, v1, p1

    .line 11
    iput p1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 12
    iput p1, v0, Lcom/watabou/utils/PointF;->y:F

    const/high16 p1, 0x42a00000    # 80.0f

    .line 13
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v0

    add-float/2addr v0, p1

    invoke-static {v0}, Lcom/watabou/utils/Random;->Float(F)F

    move-result p1

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/watabou/noosa/Visual;->x:F

    .line 14
    iget-object p1, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    if-eqz p2, :cond_4

    const/16 v2, 0x8

    goto :goto_1

    :cond_4
    const/4 v2, -0x8

    :goto_1
    int-to-float v2, v2

    mul-float v0, v0, v2

    iput v0, p1, Lcom/watabou/utils/PointF;->x:F

    if-eqz p2, :cond_5

    const p1, 0xcceeff

    .line 15
    iget-object p2, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    iget p2, p2, Lcom/watabou/utils/PointF;->y:F

    sub-float/2addr v1, p2

    invoke-virtual {p0, p1, v1}, Lcom/watabou/noosa/Visual;->tint(IF)V

    goto :goto_2

    :cond_5
    const/high16 p1, 0x40400000    # 3.0f

    .line 16
    iput p1, p0, Lcom/watabou/noosa/Visual;->bm:F

    iput p1, p0, Lcom/watabou/noosa/Visual;->gm:F

    iput p1, p0, Lcom/watabou/noosa/Visual;->rm:F

    const p1, -0x3ff9999a    # -2.1f

    .line 17
    iput p1, p0, Lcom/watabou/noosa/Visual;->ba:F

    iput p1, p0, Lcom/watabou/noosa/Visual;->ga:F

    iput p1, p0, Lcom/watabou/noosa/Visual;->ra:F

    :goto_2
    return-void
.end method


# virtual methods
.method public update()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/watabou/noosa/Visual;->update()V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    const/high16 v1, 0x42a00000    # 80.0f

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-lez v0, :cond_0

    iget v0, p0, Lcom/watabou/noosa/Visual;->x:F

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v0

    neg-float v0, v0

    iput v0, p0, Lcom/watabou/noosa/Visual;->x:F

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->speed:Lcom/watabou/utils/PointF;

    iget v0, v0, Lcom/watabou/utils/PointF;->x:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    iget v0, p0, Lcom/watabou/noosa/Visual;->x:F

    invoke-virtual {p0}, Lcom/watabou/noosa/Visual;->width()F

    move-result v2

    neg-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    .line 5
    iput v1, p0, Lcom/watabou/noosa/Visual;->x:F

    :cond_1
    :goto_0
    return-void
.end method
