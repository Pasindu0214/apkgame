.class public Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;
.super Lcom/watabou/noosa/NinePatch;
.source "ShadowBox.java"


# direct methods
.method public constructor <init>()V
    .locals 10

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v1, "shadow.png"

    const/4 v9, 0x1

    move-object v0, p0

    move v6, v9

    move v7, v9

    move v8, v9

    .line 1
    invoke-direct/range {v0 .. v9}, Lcom/watabou/noosa/NinePatch;-><init>(Ljava/lang/Object;IIIIIIII)V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/NinePatch;->texture:Lcom/watabou/gltextures/SmartTexture;

    iget v1, v0, Lcom/watabou/gltextures/SmartTexture;->id:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0x2601

    .line 3
    invoke-virtual {v0, v1, v1}, Lcom/watabou/gltextures/SmartTexture;->filter(II)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x41800000    # 16.0f

    .line 5
    iput v1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 6
    iput v1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method


# virtual methods
.method public boxRect(FFFF)V
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    sub-float/2addr p1, v0

    .line 1
    iput p1, p0, Lcom/watabou/noosa/Visual;->x:F

    sub-float/2addr p2, v0

    .line 2
    iput p2, p0, Lcom/watabou/noosa/Visual;->y:F

    const/high16 p1, 0x42000000    # 32.0f

    add-float/2addr p3, p1

    add-float/2addr p4, p1

    .line 3
    invoke-virtual {p0, p3, p4}, Lcom/shatteredpixel/shatteredpixeldungeon/effects/ShadowBox;->size(FF)V

    return-void
.end method

.method public size(FF)V
    .locals 1

    const/high16 v0, 0x41800000    # 16.0f

    div-float/2addr p1, v0

    div-float/2addr p2, v0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/watabou/noosa/NinePatch;->size(FF)V

    return-void
.end method
