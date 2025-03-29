.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator$1;
.super Lcom/watabou/noosa/tweeners/AlphaTweener;
.source "BuffIndicator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;->layout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/ui/BuffIndicator;Lcom/watabou/noosa/Visual;FF)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcom/watabou/noosa/tweeners/AlphaTweener;-><init>(Lcom/watabou/noosa/Visual;FF)V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/tweeners/AlphaTweener;->image:Lcom/watabou/noosa/Visual;

    invoke-virtual {v0}, Lcom/watabou/noosa/Gizmo;->killAndErase()V

    return-void
.end method

.method public updateValues(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/watabou/noosa/tweeners/AlphaTweener;->image:Lcom/watabou/noosa/Visual;

    iget v1, p0, Lcom/watabou/noosa/tweeners/AlphaTweener;->start:F

    iget v2, p0, Lcom/watabou/noosa/tweeners/AlphaTweener;->delta:F

    mul-float v2, v2, p1

    add-float/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/watabou/noosa/Visual;->alpha(F)V

    .line 2
    iget-object v0, p0, Lcom/watabou/noosa/tweeners/AlphaTweener;->image:Lcom/watabou/noosa/Visual;

    iget-object v0, v0, Lcom/watabou/noosa/Visual;->scale:Lcom/watabou/utils/PointF;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float p1, p1, v2

    add-float/2addr p1, v1

    .line 3
    iput p1, v0, Lcom/watabou/utils/PointF;->x:F

    .line 4
    iput p1, v0, Lcom/watabou/utils/PointF;->y:F

    return-void
.end method
